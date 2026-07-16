<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NewCampaign extends Model
{
    use HasFactory;
    protected $fillable = [
        'title', 
        'slug',
        'banner', 
        'description', 
        'start_date', 
        'end_date', 
        'status'
    ];
    protected $dates = ['start_date', 'end_date'];

    public function products()
    {
        return $this->belongsToMany(Product::class, 'campaign_product', 'new_campaign_id', 'product_id')
                    ->withPivot('campaign_price', 'campaign_stock', 'show_at_home')
                    ->withTimestamps();
    }

}
