<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Contracts\Auth\Guard;

class CheckAdmin
{
    protected $auth;

    public function __construct(Guard $auth)
    {
        $this->auth = $auth;
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (!$this->auth->user()->isAdmin()) {
            die('Ban khong co quyen dang nhap vao quan tri !');
            //session()->flash('error', 'Ban khong co quyen truy cap!');
            //return redirect('/login');
        }

        return $next($request);
    }
}
