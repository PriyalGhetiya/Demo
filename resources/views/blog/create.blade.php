@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        
<div class="container">
<form action = "{{ route('blog.store')}}" method="POST" enctype="multipart/form-data">
    @csrf
  <div class="form-group">
    <label for="title">Title</label>
    <input type="text" class="form-control" id="title" name = "title">
    </div>
    <div class="form-group">
    <label for="description">Descriptio</label>
    <textarea class="form-control" id="description" name = "description"></textarea>
    </div>
    <div class="form-group">
    <label for="date">Start Date</label>
    <input type="date" class="form-control" id="description" name = "start_date">
    </div>  
    <div class="form-group">
    <label for="description">End Date</label>
    <input type="date" class="form-control" id="description" name = "end_date">
    </div> 
    <div class="form-group">
    <label for="file">Image</label>
    <input type="file" class="form-control" id="description" name = "images[]">
    </div> 
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
@endsection