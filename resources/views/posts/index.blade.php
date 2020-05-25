@extends('layouts.app')
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script src="{{ asset('/js/like.js') }}"></script>
@section('content')
    @if(count($posts) > 0)
      <div class="container" style="margin-left:10px;margin-top:10px">
        <div class="row">
          @foreach ($posts as $post)
          <div class="col-md-4">
            <div class="blog-post">
              
                <div class="post" data-postid="{{ $post->id }}" >
                  <a class="black-text" href="/posts/{{$post->id}}"
                      data-size="1600x1067">
                  <img class="img-fluid" style="height:300px;width:300px" src="/storage/cover_images/{{$post->cover_image}}">
                  </a>
                  <h3>{{$post->title}}</h3>
                <small>Posted on {{$post->created_at}} by {{$post->user->name}}</small>
                <p>{{$post->body}}</p>
                <div class="interaction">
                  <a href="#" class="btn btn-xs btn-warning like" >{{ Auth::user()->likes()->where('post_id', $post->id)->first() ? Auth::user()->likes()->where('post_id', $post->id)->first()->like == 1 ? 'You like this post' : 'Like' : 'Like'  }}</a> |
                  <a href="#" class="btn btn-xs btn-danger like" >{{ Auth::user()->likes()->where('post_id', $post->id)->first() ? Auth::user()->likes()->where('post_id', $post->id)->first()->like == 0 ? 'You dont like this post' : 'Dislike' : 'Dislike'  }}</a>
               </div>
                <hr>
              </div>
          </div>
            </div><!-- /.blog-post -->


            @endforeach

              </div><!-- /.blog-post -->
          @else
              <p>No posts found</p>
          @endif 
          
@endsection