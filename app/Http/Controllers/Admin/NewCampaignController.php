<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\NewCampaignRequest;
use App\Http\Requests\NewCampaignUpdateRequest;
use App\Models\NewCampaign;
use App\Models\Product;
use Illuminate\Http\Request;
use Toastr;

class NewCampaignController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $campaigns = NewCampaign::orderBy('id', 'DESC')->get();
        return view('backEnd.new_campaign.index', compact('campaigns'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backEnd.new_campaign.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(NewCampaignRequest $request)
    {
        $imageUrl = null;

        if ($request->hasFile('banner') && $request->file('banner')->isValid()) {
            $image = $request->file('banner');

            // Generate a safe file name
            $filename = time() . '-' . strtolower(preg_replace('/\s+/', '-', $image->getClientOriginalName()));

            // Move the file to the public/uploads/new_campaign directory
            $image->move('public/uploads/new_campaign', $filename);

            // Store the relative path to save in the database
            $imageUrl = 'public/uploads/new_campaign/' . $filename;
        }

        $input = $request->except('banner'); // exclude raw file
        $input['title'] = $request->title;
        $input['slug'] = strtolower(preg_replace('/\s+/', '-', $request->title));
        $input['slug'] = str_replace('/', '', $input['slug']);
        $input['banner'] = $imageUrl;
        $input['description'] = $request->description;
        $input['start_date'] = date('Y-m-d H:i:s', strtotime(str_replace('T', ' ', $request->start_date)));
        $input['end_date'] = date('Y-m-d H:i:s', strtotime(str_replace('T', ' ', $request->end_date)));
        $input['status'] = $request->status ? 1 : 0;

        // dd($input);


        NewCampaign::create($input);

        Toastr::success('Success', 'Data inserted successfully');
        return redirect()->route('new-campaign.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // $campaign = NewCampaign::with('products')->select('id', 'title')->findOrFail($id);
        // $products = Product::where(['status' => 1, 'is_deleted' => 0])->orderBy('name')->get();
        // return view('backEnd.new_campaign.campaign_product_list', compact('campaign', 'products'));
        $campaign = NewCampaign::with('products')->findOrFail($id);
        $products = Product::where(['status' => 1, 'is_deleted' => 0])->orderBy('name')->get();
        return view('backEnd.new_campaign.campaign_product_list', compact('campaign', 'products'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $campaign = NewCampaign::find($id);
        return view('backEnd.new_campaign.edit', compact('campaign'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(NewCampaignUpdateRequest $request, $id)
    {
        $input = $request->except('banner'); // exclude raw file
        $input['title'] = $request->title;
        $input['slug'] = strtolower(preg_replace('/\s+/', '-', $request->title));
        $input['slug'] = str_replace('/', '', $input['slug']);
        $input['description'] = $request->description;
        $input['start_date'] = date('Y-m-d H:i:s', strtotime(str_replace('T', ' ', $request->start_date)));
        $input['end_date'] = date('Y-m-d H:i:s', strtotime(str_replace('T', ' ', $request->end_date)));
        $input['status'] = $request->status ? 1 : 0;

        $campaign = NewCampaign::findOrFail($id);

        if ($request->hasFile('banner') && $request->file('banner')->isValid()) {
            $image = $request->file('banner');

            // Generate a safe file name
            $filename = time() . '-' . strtolower(preg_replace('/\s+/', '-', $image->getClientOriginalName()));

            // Move the file to the public/uploads/new_campaign directory
            $image->move('public/uploads/new_campaign', $filename);

            // Store the relative path to save in the database
            $imageUrl = 'public/uploads/new_campaign/' . $filename;
            $input['banner'] = $imageUrl;

            // Delete old image only if a new one is uploaded
            if ($campaign->banner && file_exists($campaign->banner)) {
                unlink($campaign->banner);
            }
        }

        $campaign->update($input);

        Toastr::success('Success', 'Data updated successfully');
        return redirect()->route('new-campaign.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $campaign = NewCampaign::find($id);
        if (file_exists($campaign->banner)) {
            unlink($campaign->banner);
        }
        $campaign->delete();
        Toastr::success('Success', 'Data deleted successfully');
        return redirect()->back();
    }

    public function inactive(Request $request)
    {
        $inactive = NewCampaign::find($request->hidden_id);
        $inactive->status = 0;
        $inactive->save();
        Toastr::success('Success', 'Data inactive successfully');
        return redirect()->back();
    }
    public function active(Request $request)
    {
        $active = NewCampaign::find($request->hidden_id);
        $active->status = 1;
        $active->save();
        Toastr::success('Success', 'Data active successfully');
        return redirect()->back();
    }

    public function addProductToCampaign(Request $request, $campaignId)
    {
        // dd($request->all());
        $request->validate([
            'product_id' => 'required|exists:products,id',
            'campaign_price' => 'nullable|numeric|min:0',
            'campaign_stock' => 'nullable|integer|min:0',
            'show_at_show' => 'nullable|boolean',
        ]);

        $campaign = NewCampaign::findOrFail($campaignId);
        $product = Product::findOrFail($request->product_id);
        $productExists = $campaign->products()->where('product_id', $request->product_id)->exists();

        if ($productExists) {
            Toastr::error('Product already exists in the campaign');
            return back();
        }
         if ($request->campaign_stock > $product->stock) {
        Toastr::error("Campaign stock ({$request->campaign_stock}) exceeds available product stock ({$product->stock})");
        return back()->withInput();
    }

        // Attach the product to the campaign with pivot data
        $campaign->products()->syncWithoutDetaching([
            $request->product_id => [
                'campaign_price' => $request->campaign_price,
                'campaign_stock' => $request->campaign_stock,
                'show_at_home' => $request->show_at_home ? 1 : 0,
            ]
        ]);

        Toastr::success('Success', 'Product added to campaign successfully');
        return redirect()->back();
    }
    public function removeProductFromCampaign(Request $request, $campaignId, $productId)
    {
        $campaign = NewCampaign::findOrFail($campaignId);
        $campaign->products()->detach($productId);

        Toastr::success('Success', 'Product removed from campaign successfully');
        return redirect()->back();
    }

    //get product price 
    public function getPrices($id)
    {
        $product = Product::find($id);
        if ($product) {
            return response()->json([
                'old_price' => $product->old_price,
                'new_price' => $product->new_price
            ]);
        }
        return response()->json(['old_price' => null, 'new_price' => null], 404);
    }
    /**
     * change status of campaign product 
     */
    public function updateStatus(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'product_id' => 'required|exists:products,id',
            'campaign_id' => 'required|exists:new_campaigns,id',
        ]);

        $campaignId = $request->input('campaign_id');
        $showAtHome = $request->input('show_at_home');
        $productId = $request->input('product_id');

        $campaign = NewCampaign::findOrFail($campaignId);
        $updated = $campaign->products()->updateExistingPivot($productId, [
            'show_at_home' => $showAtHome
        ]);

        if ($updated) {
            return response()->json(['success' => 'Status updated successfully']);
        } else {
            return response()->json(['error' => 'No pivot record found.'], 404);
        }
    }
}
