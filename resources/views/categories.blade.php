
@extends('layout.main')

@section('container')
    <h1 class="mb-5">Post Categori</h1>

        @if($categories->isNotEmpty())
            @foreach($categories as $category)
            <ul>
                <li>
                    <a href="/categories/{{$category->slug}}">{{ $category->name }}</a>
                </li>
            </ul>
            @endforeach
        @else
        <h1 class="mb-5">kosong</h1>
        @endif
   
@endsection 


