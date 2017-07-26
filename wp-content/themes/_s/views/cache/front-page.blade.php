@extends('layouts.master')

@section('title', 'Page Title')

@section('header')
  @parent
@endsection

@section('sidebar')
  @parent
  <p>ここはマスターサイドバーに追加される</p>
@endsection

@section('content')
  @wpposts
  <h1>{{get_the_title()}}</h1>
  <h3>{{the_author()}}</h3>
  <h3>{{the_author_link()}}</h3>
  <h3>{{the_time()}}</h3>
  @wpempty
  No posts here.
  @wpend
@endsection
