@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        
<div class="container">
  <h2>Blog List</h2>
  <a href= {{ route('blog.create') }} class = 'btn btn-sm btn-primary'>Creat Blog</a>            
  @if($message = Session::get('success'))
    <strong>{{ $message }}</strong>
  @endif
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Title</th>
        <th>Description</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
        @foreach ($data as $item)    
        <tr>
          <td>{{ $item->title }}</td>
          <td>{{ $item->description }}</td>
          <td>
            <a href= {{ route('blog.edit',$item->id) }} class = 'btn btn-sm btn-primary'>Edit</a> 
            <a href= {{ route('blog.destroy',$item->id) }} class = 'btn btn-sm btn-primary'>Delete</a> 
          </td>
        </tr>
        @endforeach
    </tbody>
  </table>
</div>    </div>
</div>
@endsection
