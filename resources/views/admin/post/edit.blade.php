@extends('admin.layout')

@section('content')
  <div class="container-fluid">
    <div class="row">
      {{ Form::model($post, array('route' => array('admin.update', $post->id), 'method' => 'PUT')) }}

        <div class="form-group">
            {{ Form::label('title', 'Title') }}
            {{ Form::text('title', null, array('class' => 'form-control')) }}
        </div>

        <div class="form-group">
            {{ Form::label('content', 'Content') }}
            {{ Form::textarea('content', null, array('class' => 'form-control')) }}
        </div>

        <div class="form-group">
            {{ Form::label('author', 'Author') }}
            {{ Form::select('author', array('0' => 'Select an author', '1' => 'Simon'), null, array('class' => 'form-control')) }}
        </div>

        {{ Form::submit('Edit the post!', array('class' => 'btn btn-primary')) }}

    {{ Form::close() }}
    </div>
  </div>
@stop