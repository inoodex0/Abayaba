<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class NewCampaignRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'title' => 'required|max:255',
            'banner' => 'required|mimes:jpg,jpeg,png,git,svg,webp|max:5024',
            'description' => 'required|max:5000',
            'start_date' => 'required',
            'end_date' => 'required',
        ];
    }
}
