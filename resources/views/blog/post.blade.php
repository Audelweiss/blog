@include('structure.header')

<!-- Post Content -->
<article>
    <div class="container">
        <div class="row">
            <h1>{{ $post->title }}</h1>
            <h5>{{ $post->published_at->format('M jS Y g:ia') }}</h5>
            <hr> {!! nl2br(e($post->content)) !!}
            <hr>
            <button class="btn btn-primary" onclick="history.go(-1)">
                « Back
            </button>
        </div>
    </div>
</article>




@extends('structure.footer')