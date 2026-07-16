<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\BlogCategory;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Str;

class BlogCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $blogs = BlogCategory::orderBy('id', 'desc')->paginate(10);
        return view('backEnd.blog.blog-category.index', compact('blogs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backEnd.blog.blog-category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validation = $request->validate([
            'name' => 'required|max:200|unique:blog_categories',
            'status' => 'required',
        ], [
            'name.unique' => 'Blog Category Already Exists',
        ]);

        $category = new BlogCategory();
        $category->name = $request->name;
        $category->slug = Str::slug($request->name);
        $category->status = $request->status;
        $category->save();
        Toastr::success('Blog Category Added Successfully');
        return redirect()->route('blog-category.index');
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
        $blog = BlogCategory::findOrFail($id);
        return view('backEnd.blog.blog-category.edit', compact('blog'));
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
        $validation = $request->validate([
            'name' => 'required|max:200|unique:blog_categories,name,' . $id,
            'status' => 'required',
        ], [
            'name.unique' => 'Blog Category Already Exists',
        ]);

        $blog = BlogCategory::findOrFail($id);
        $blog->name = $request->name;
        $blog->slug = Str::slug($request->name);
        $blog->status = $request->status;
        $blog->save();
        Toastr::success('Update Successfully!');
        return redirect()->route('blog-category.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $blog_category = BlogCategory::findOrFail($id);
        if ($blog_category->blogs()->count() > 0) {
            Toastr::error('Cannot delete category because it has related blogs!');
            return redirect()->back();
        }
        $blog_category->delete();
        Toastr::success('Delete Successfully!');
        return redirect()->back();
    }

    public function changeStatus(Request $request)
    {
        // dd($request->all());
        $blog_category = BlogCategory::findOrFail($request->id);
        $blog_category->status = $request->status == 'true' ? 1 : 0;
        $blog_category->save();

        if ($blog_category->save()) {
            // return response()->json(['success'=>'Status has been Updated!', ]);
            return response()->json(['success' => 'Status updated successfully']);
        } else {
            return response()->json(['error' => 'Status has not been Updated!'], 400);
        }
    }
}
