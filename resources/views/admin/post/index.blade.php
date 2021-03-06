@extends('admin.layout') @section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Posts</h3>
                </div>
                <div class="panel-body">
                    @if($errors->any())
<h4>{{$errors->first()}}</h4>
@endif
                    @foreach ($posts as $post)
                    <div class="post-preview">
                        <ul style="list-style:none;" class="pull-right">
                            <li style="display:inline-block; margin-right:10px;"><a href="{{ URL::to('admin/post/' . $post->id . '/edit') }}"><i style="color:#4b93db;" class="fa fa-pencil fa-2x" aria-hidden="true"></i></a>
                            </li>
                            <li style="display:inline-block;">{{ Form::open(array('route' => array('admin.post.destroy', $post->id), 'method' => 'delete')) }}
                                <button type="submit" style="border:none; background:none;"><i style="color:#db4b4b;" class="fa fa-ban fa-2x" aria-hidden="true"></i></button>
                                {{ Form::close() }}</li>

                        </ul>
                        <a href="{{ url('/blog/') }}/{{ $post->slug }}">
                            <h2 class="post-title">
                           {{ str_limit($post->title, 50) }}
                        </h2>
                        </a>
                        <p class="post-meta">Dernière modification : {{ $post->updated_at->format('M jS Y g:ia') }}</p>

                    </div>
                    <hr> @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@stop