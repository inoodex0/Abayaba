<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\NewCampaign;
use App\Models\Product;
use Illuminate\Http\Request;

class CampaignController extends Controller
{
    public function index($id)
    {
        $campaign = NewCampaign::findOrFail($id);

         $campaignProducts = $campaign->products() ->wherePivot('show_at_home', 1)
        ->with(['image', 'prosizes', 'procolors'])
        ->paginate(36);

    return view('frontEnd.layouts.campaign.index', compact('campaignProducts', 'campaign'));
    }
}
