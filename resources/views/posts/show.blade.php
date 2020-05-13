@extends('layouts.app')

@section('content')
<div class="well">
            <div class="row">
                <div class="col-md-4 col-sm-4">
                    <a href="/posts" class="btn btn-secondary">Go back</a>
                        <h1>{{$post->title}}</h1>
                        <img style="width:100%" src="/storage/cover_images/{{$post->cover_image}}">
                        <br>
                        <br>
                </div>
                <div class="col-md-8 col-sm-8">
                    <div>
                        {!!$post->body!!}
                    </div>
                    <hr>
                    <small>Written on {{$post->created_at}} by {{$post->user->name}}</small>
                    <hr>
                    @if(!Auth::guest())
                        @if(Auth::user()->id==$post->user_id)
                    <a href="/posts/{{$post->id}}/edit" class="btn btn-default">Edit</a>
                    
                    {!!Form::open(['action' => ['PostsController@destroy', $post->id], 'method' => 'POST', 'class' => 'float-right'])!!}
                                    {{Form::hidden('_method', 'DELETE')}}
                                    {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                                {!!Form::close()!!}
                    
                                @endif
                            @endif
                </div>
            </div>
        </div>
@endsection
