<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('campaign_product', function (Blueprint $table) {
            $table->id();
            $table->foreignId('new_campaign_id')->constrained('new_campaigns')->onDelete('cascade');
            $table->foreignId('product_id')->constrained('products')->onDelete('cascade');
            $table->decimal('campaign_price', 12, 2)->nullable();
            $table->integer('campaign_stock')->nullable();
            $table->boolean('show_at_home')->default(false);
            $table->timestamps();
            $table->unique(['new_campaign_id', 'product_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('campaign_product');
    }
};
