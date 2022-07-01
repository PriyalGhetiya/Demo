<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Blog;
use App\Images;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('blog.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request);
        // $data = $this->validation([
        //     'title' => 'required',
        //     'description' => 'required',
        //     ''
        // ]
        // );

        $data = [
            'user_id' => Auth::user()->id,
            'title' => $request->title,
            'description' => $request->title,
            'start_date' => $request->start_date,
            'end_date' => $request->start_date,
        ];
         $row = Blog::create($data);
         $id = $row->id;
         foreach($request->file('images') AS $image){
            echo "1226";
            $filename = $this->store_image($image);
            Images::create([
            'parent_id' => $id,
            'parent_title' => 'blog_image',
            'image' => $filename
            ]);
         
        }

         return redirect()->route('home')->with('success','Blog create succesfully');
    }

    public function store_image($name){
        $destination = '/assets/demo';
        $ext = $name->getClientOriginalExtension();
        $filename = rand(1,100).'.'.$ext;
        $name->move(public_path().$destination,$filename);
        return $filename;
    // echo $ext = $name->getClientOriginalExtension();

    // exit();
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Blog::findOrFail($id,'id');
        dd($data);
        $data->delete();

        return redirect()->route('home')->with('success','Blog delete succesfully');
    }
}
