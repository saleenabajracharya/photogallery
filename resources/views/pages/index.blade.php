@extends('layouts.app')

@section('content')
    @if(count($posts) > 0)
      
      <div class="container" style="margin-left:10px;margin-top:10px">
        <div class="row">
            @foreach($posts as $post)
                <figure class="col-md-4">
                    <a class="black-text" href="/posts/{{$post->id}}"
                    data-size="1600x1067">
                    <img class="img-fluid" style="height:300px;width:300px" src="/storage/cover_images/{{$post->cover_image}}">
                    
                    </a>
                    <h3 class="text-center my-3">{{$post->title}}</h3>
                    <div class="interaction">
                        
                         {{-- <a href="{{ route('like', ['post_id' => $post->id]) }}" class="post-item">Like</a>| --}}
                       
                        <hr>
                    </div>
                    {{-- <small>Written on {{$post->created_at}} by {{$post->user->name}}</small> --}}
            </figure>
            @endforeach
        </div>
      </div>
          
          {{$posts->links()}}
          @else
              <p>No posts found</p>
          @endif
 
    


@endsection
{{-- @extends('layouts.app')

@section('content')
    <h1>Posts</h1>
    @if(count($posts) > 0)
        {{-- @foreach($posts as $post)
            <div class="well">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <img style="width:100%" src="/storage/cover_images/{{$post->cover_image}}">
                    </div>
                    
                    <div class="col-md-8 col-sm-8">
                        <h3><a href="/posts/{{$post->id}}">{{$post->title}}</a></h3>
                        <small>Written on {{$post->created_at}} by {{$post->user->name}}</small>
                    </div>
                </div>
            </div>
        @endforeach --}}
        {{$posts->links()}}
    @else
        <p>No posts found</p>
    @endif
@endsection --}}
