<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function index()
    {
        $time = Carbon::parse('2 days ago')->toFormattedDateString();
        $newCategory = Category::where('is_deleted', '=', '0')->orderBy('created_at', 'desc')->limit(10)->get();
        $hotCategory = Category::where('is_hot', true)->orderBy('created_at', 'desc')->limit(10)->get();
        $bestCategory = Category::where('is_best', true)->orderBy('created_at', 'desc')->limit(10)->get();
        $topCategory = Category::where('is_top', true)->orderBy('created_at', 'desc')->limit(10)->get();
        $discountCategory = Category::where('is_deleted', '=', '0')->orderBy('discount')->limit(10)->get();

        return view('client.pages.home', ['newBook' => $newCategory, 'time' => $time, 'hotBook' => $hotCategory,
            'bestBook' => $bestCategory, 'topBook' => $topCategory, 'discountBook' => $discountCategory]);
    }
}
