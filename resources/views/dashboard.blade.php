@extends('layouts.app')
@section('content')
                <div class="card-body">
                    {{-- <a href="/posts/create" class="btn btn-primary">Create Post</a>
                     --}}



<div class="container">
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create Post</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
     
        {{-- <div class="modal-body">
          <p>Some text in the modal.</p>
        </div --}}
        {!! Form::open(['action' => 'PostsController@store','style'=>'padding:50px', 'method' => 'POST', 'enctype' => 'multipart/form-data']) !!}
          <div class="form-group">
            {{Form::label('title', 'Title')}}
            {{Form::text('title', '', ['class' => 'form-control', 'placeholder' => 'Title'])}}
        </div> 
        <div class="form-group">
            {{Form::label('body', 'Add to your post')}}
            {{Form::textarea('body', '', ['class' => 'form-control', 'placeholder' => 'Caption'])}}
        </div>
        <div class="form-group">
            {{Form::file('cover_image')}}
        </div>
        {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
    {!! Form::close() !!}
        {{-- <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div> --}}
      </div>
      
    </div>
  </div>
  
</div>
<hr>

                    <h3>Your Posts</h3>
          @if  ($posts && count($posts) > 0)        
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
                    <div class="row">
                    <a href="/posts/{{$post->id}}/edit" class="btn btn-primary" >Edit</a> | 
                    {!!Form::open(['action' => ['PostsController@destroy', $post->id], 'method' => 'POST', 'class' => 'pull-right'])!!}
                        {{Form::hidden('_method', 'DELETE')}}
                        {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                    {!!Form::close()!!}
                    </div>   
                 </div> 
                  <hr>
                </div>
            </div>
              </div>
              @endforeach
          @else
              <p>You have no post</p>
          @endif 
@endsection