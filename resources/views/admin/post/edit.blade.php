@extends('admin.layout')

@section('content')
  <div class="container">
    <div class="row">
     {{ Html::ul($errors->all()) }}
      {{ Form::model($post, array('route' => array('admin.post.update', $post->id), 'method' => 'PUT')) }}

        <div class="form-group">
            {{ Form::label('title', 'Title') }}
            {{ Form::text('title', null, array('class' => 'form-control')) }}
        </div>

        <div class="form-group">
            {{ Form::label('content', 'Content') }}
            {{ Form::textarea('content', null, array('class' => 'form-control')) }}
        </div>


        {{ Form::submit('Éditer', array('class' => 'btn btn-primary')) }}

    {{ Form::close() }}
    </div>
  </div>
@stop