<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Blog;
use App\Models\BlogCategory;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $blogs = Blog::orderBy('id', 'desc')->paginate(30);
        return view('backEnd.blog.index', compact('blogs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $blog_categories = BlogCategory::all();
        return view('backEnd.blog.create', compact('blog_categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->all());

        $request->validate([
            'image' => 'required|image|max:5120',
            'title' => 'required|max:200|unique:blogs,title',
            'category' => 'required',
            'description' => 'required',
            'status' => 'required',

        ]);

        $imageUrl = null;

        if ($request->hasFile('image') && $request->file('image')->isValid()) {
            $image = $request->file('image');

            // Generate a safe file name
            $filename = time() . '-' . strtolower(preg_replace('/\s+/', '-', $image->getClientOriginalName()));

            // Move the file to the public/uploads/new_campaign directory
            $image->move('public/uploads/blogs', $filename);

            // Store the relative path to save in the database
            $imageUrl = 'public/uploads/blogs/' . $filename;
        }
        $blog = new Blog();
        $blog->image = $imageUrl;
        $blog->title = $request->title;
        $blog->slug = \Str::slug($request->title);
        $blog->category_id = $request->category;
        $blog->user_id = Auth::user()->id;
        $blog->description = $request->description;
        $blog->status = $request->status;
        $blog->save();
        Toastr::success('Create Successfully!');
        return redirect()->route('blog.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $blog = Blog::findOrFail($id);
        $blog_categories = BlogCategory::where('status', 1)->get();
        return view('backEnd.blog.edit', compact('blog', 'blog_categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'image' => 'nullable|image|max:5120',
            'title' => 'required|max:200|unique:blogs,title,' . $id,
            'category' => 'required',
            'description' => 'required',
            'status' => 'required',

        ]);
        $blog = Blog::findOrFail($id);
        if ($request->hasFile('image') && $request->file('image')->isValid()) {
            $image = $request->file('image');

            // Generate a safe file name
            $filename = time() . '-' . strtolower(preg_replace('/\s+/', '-', $image->getClientOriginalName()));

            // Move the file to the public/uploads/new_campaign directory
            $image->move('public/uploads/blogs', $filename);

            // Store the relative path to save in the database
            $imageUrl = 'public/uploads/blogs/' . $filename;

            // Delete old image only if a new one is uploaded
            if ($blog->image && file_exists($blog->image)) {
                unlink($blog->image);
            }
            $blog->image = $imageUrl;
        } else {
            if ($blog->image) {
                $imageUrl = $blog->image;
            }
        }
        $blog->title = $request->title;
        $blog->slug = \Str::slug($request->title);
        $blog->category_id = $request->category;
        $blog->description = $request->description;
        $blog->status = $request->status;
        $blog->save();
        Toastr::success('Update Successfully!');
        return redirect()->route('blog.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $blog=Blog::findOrFail($id);
        if($blog->image && file_exists($blog->image)){
            unlink($blog->image);
        }
        $blog->delete();
        return response(['status'=>'success','message'=>'Deleted Successfully']);
    }
     public function changeStatus(Request $request)
    {
        // dd($request->all());
        $blog = Blog::findOrFail($request->id);
        $blog->status = $request->status == 'true' ? 1 : 0;
        $blog->save();

        if ($blog->save()) {
            return response()->json(['success' => 'Status updated successfully']);
        } else {
            return response()->json(['error' => 'Status has not been Updated!'], 400);
        }
    }
}
