@extends('layouts.app')

@section('content')
<div class="container" style="margin-left:10px;margin-top:10px">
    <div class="row">
        
            <figure class="col-md-4" style="margin-left:300px">
                
                <img class="img-fluid" style="height:300px;width:300px;" src="/storage/cover_images/{{$post->cover_image}}">
                
               
                <small>Written on {{$post->created_at}} by {{$post->user->name}}</small>
                <h3 class="text-center my-3">{{$post->title}}</h3>
                <h5 class="text-center my-3">{{$post->body}}</h5>
                <div class="interaction">
                    @if(!Auth::guest())
                    @if(Auth::user()->id==$post->user_id)
                <a href="/posts/{{$post->id}}/edit" class="btn btn-default">Edit</a>
                
                {!!Form::open(['action' => ['PostsController@destroy', $post->id], 'method' => 'POST', 'class' => 'float-right'])!!}
                                {{Form::hidden('_method', 'DELETE')}}
                                {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                            {!!Form::close()!!}
                
                            @endif
                        @endif
                    
                   
                    <hr>
                </div>
               
        </figure>

    </div>
  </div>
      
                   
                </div>
            </div>
        </div>
@endsection