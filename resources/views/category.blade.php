
@extends('layout.main')

@section('container')
   
    @if($post->isEmpty())
        <h5>Data Kosong</h5>
    @else
        <h1 class="mb-5">Post Category : {{ $category }}</h1>
        @foreach($post as $post)
        <article class="mb-5">
            <h2>
                <a href="/blog/{{$post->slug}}">{{ $post->title }}</a>
            </h2>
                <p>By: {{$post->user->name}}</p>
                {!! $post->body !!}
            </article>
        @endforeach
    @endif
@endsection 


