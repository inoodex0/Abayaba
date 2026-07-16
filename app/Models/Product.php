<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $guarded = [];

    /**
     * Specify the route key name for model binding.
     */
    public function getRouteKeyName()
    {
        return 'slug';
    }

    /**
     * Define relationships.
     */
    public function image()
    {
        return $this->hasOne(Productimage::class, 'product_id')->select('id', 'image', 'product_id');
    }

    public function images()
    {
        return $this->hasMany(Productimage::class, 'product_id')->select('id', 'image', 'product_id');
    }

    public function reviews()
    {
        return $this->hasMany(Review::class, 'product_id')->select('id');
    }

    public function category()
    {
        return $this->hasOne(Category::class, 'id', 'category_id')->select('id', 'name', 'slug');
    }

    public function subcategory()
    {
        return $this->hasOne(Subcategory::class, 'id', 'subcategory_id')->select('id', 'subcategoryName', 'slug');
    }

    public function childcategory()
    {
        return $this->hasOne(Childcategory::class, 'id', 'childcategory_id')->select('id', 'childcategoryName', 'slug');
    }

    public function brand()
    {
        return $this->hasOne(Brand::class, 'id', 'brand_id')->select('id', 'name', 'slug');
    }

    public function sizes()
    {
        return $this->belongsToMany(Size::class, 'productsizes')->withTimestamps();
    }

    public function colors()
    {
        return $this->belongsToMany(Color::class, 'productcolors')->withTimestamps();
    }

    public function prosizes()
    {
        return $this->hasMany(Productsize::class);
    }

    public function procolors()
    {
        return $this->hasMany(Productcolor::class);
    }

    public function prosize()
    {
        return $this->hasOne(Productsize::class, 'product_id');
    }

    public function procolor()
    {
        return $this->hasOne(Productcolor::class, 'product_id');
    }

    //campaign 
    public function campaigns()
    {
        return $this->belongsToMany(NewCampaign::class, 'campaign_product', 'product_id', 'new_campaign_id')
            ->withPivot('campaign_price', 'campaign_stock', 'show_at_home')
            ->withTimestamps();
    }
    public function getDiscountedCampaignPriceAttribute()
    {
        // Get campaign price (percentage) from pivot if loaded
        $discount = $this->pivot->campaign_price ?? 0;

        // Use old_price if exists, else new_price
        $basePrice = $this->old_price ?? $this->new_price;

        if (!$basePrice || !$discount) {
            return null;
        }

        $finalPrice = $basePrice - ($discount / 100 * $basePrice);

        return round($finalPrice, 2);
    }
    public function activeCampaign()
    {
        return $this->belongsToMany(NewCampaign::class, 'campaign_product')
            ->withPivot('campaign_price', 'campaign_stock', 'show_at_home')
            ->where('status', 1)
            ->where('show_at_home', 1)
            ->where(function ($q) {
                $q->whereNull('start_date')->orWhere('start_date', '<=', now());
            })
            ->where(function ($q) {
                $q->whereNull('end_date')->orWhere('end_date', '>=', now());
            });
    }
    public function getFinalPriceAttribute()
    {
        // Try to get the first active campaign
        $campaign = $this->activeCampaign()->first();

        // If campaign exists and has a discount, apply it
        if ($campaign && $campaign->pivot && $campaign->pivot->campaign_price) {
            $basePrice = $this->old_price ?? $this->new_price;
            $discount = $campaign->pivot->campaign_price;

            return round($basePrice - ($discount / 100 * $basePrice), 2);
        }

        // Fallback to regular new_price
        return $this->new_price;
    }
    public function getCampaignDiscountPercentAttribute()
    {
        $campaign = $this->activeCampaign()->first();

        if ($campaign && $campaign->pivot && $campaign->pivot->campaign_price) {
            return $campaign->pivot->campaign_price;
        }

        return null;
    }
    /**
     * Get the SKU for the product.
     */
    public function getSkuAttribute()
    {
        return $this->attributes['sku'] ?? null;
    }

    /**
     * Set the SKU for the product.
     */
    public function setSkuAttribute($value)
    {
        $this->attributes['sku'] = strtoupper($value);
    }
    /**
     * Set the tags attribute as a comma-separated string.
     */
    public function setTagsAttribute($value)
    {
        $this->attributes['tags'] = is_array($value) ? implode(',', $value) : $value;
    }

    /**
     * Get the tags attribute as an array.
     */
    public function getTagsAttribute($value)
    {
        return explode(',', $value);
    }

    public function getSpecificationAttribute($value)
    {
        return $this->attributes['specification'] ?? null;
    }
    // Optionally, you can specify a cast for the specification field
    protected $casts = [
        'specification' => 'string',  // Convert the specification column to string
    ];

    // If you want to append 'specification' to the model's array form

    protected $appends = ['specification'];
    // get average rating
    public function getAverageRatingAttribute()
    {
        return round($this->reviews()->avg('ratting'), 1) ?? 0;
    }
}
