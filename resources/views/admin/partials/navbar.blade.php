<ul class="nav navbar-nav">
  <li><a href="{{ url('/') }}">Blog Home</a></li>
  @if (Auth::check())
    <li @if (Request::is('admin/post')) class="active" @endif>
      <a href="{{url('/admin/post') }}">Posts</a>
    </li>
    <li @if (Request::is('admin/post/create')) class="active" @endif>
      <a href="{{url('/admin/post/create') }}">Ajouter un post</a>
    </li>
  @endif
</ul>

<ul class="nav navbar-nav navbar-right">
  @if (Auth::guest())
    <li><a href="{{url('/auth/login') }}">Se connecter</a></li>
  @else
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
         aria-expanded="false">{{ Auth::user()->name }}
        <span class="caret"></span>
      </a>
      <ul class="dropdown-menu" role="menu">
        <li><a href="{{url('/auth/logout') }}">Se déconnecter</a></li>
      </ul>
    </li>
  @endif
</ul>