@extends('layouts.app')

@section('content')

<div class="container">
    @if (session()->has('success_message'))
    <div class="alert alert-success" >
        {{ session()->get('success_message') }}
    </div>
@endif
@if (count($errors)>0)
<div class="alert alert-danger" >
    <ul>
        @foreach($errors->all() as $error)
         <li>{{$error}}<li>
          @endforeach
    </ul>
</div>


@endif
    <h1>Search Results</h1><br>
<p>{{$posts->total()}} result(s) for '{{request()->input('query')}}'</p>

<div class="container" style="margin-left:10px;margin-top:10px">
    <div class="row">
        @foreach($posts as $post)
            <figure class="col-md-4">
                <a class="black-text" href="/posts/{{$post->id}}"
                data-size="1600x1067">
                <img class="img-fluid" style="height:300px;width:300px" src="/storage/cover_images/{{$post->cover_image}}">
                
                </a>
                <small>Written on {{$post->created_at}} by {{$post->user->name}}</small>
                <h3 class="text-center my-3">{{$post->title}}</h3>
                <h5 class="text-center my-3">{{$post->body}}</h5>
                <div class="interaction">
                    
                    
                   
                    <hr>
                </div>
               
        </figure>
        @endforeach
    </div>
  </div>
      
      {{$posts->links()}}
      
{{-- <table class="table">
    <thead>
      <tr>
        <th scope="col">Name</th>
        <th scope="col">Description</th>
        <th scope="col">Image</th>
 
      </tr>
    </thead>
    <tbody>
        @foreach($posts as $post)
      <tr>
        <th scope="row"> {{$post->title}}</th>
        <td> {{$post->body}}</td>
        <td> <img class="img-fluid" style="height:300px;width:300px" src="/storage/cover_images/{{$post->cover_image}}"></td>
    
      </tr>
      
      @endforeach
    </tbody>
  </table> --}}

{{$posts->appends(request()->input())->links()}}


</div>

@endsection