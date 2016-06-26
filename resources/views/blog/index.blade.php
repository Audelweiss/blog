@include('structure.header')



    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
               @foreach ($posts as $post)
                <div class="post-preview">
                    <a href="{{ url('/blog/') }}/{{ $post->slug }}">
                        <h2 class="post-title">
                           {{ $post->title }}
                        </h2>
                        <h3 class="post-subtitle">
                           {{ str_limit($post->content) }}
                        </h3>
                    </a>
                    <p class="post-meta">{{ $post->published_at->format('M jS Y g:ia') }}</p>
                </div>
                <hr>
                 @endforeach
                
                <!-- Pager -->
                <ul class="pager">
                        {!! $posts->render() !!}
                </ul>
            </div>
        </div>
    </div>


@extends('structure.footer')