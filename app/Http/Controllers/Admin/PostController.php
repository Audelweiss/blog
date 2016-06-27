<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Post;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Validator;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Html\HtmlFacade;
use Input;

class PostController extends Controller
{
    /**
   * Display a listing of the posts.
   *
   * @return Response
   */
  public function index()
  {
      //affichage du plus récent
      $posts = Post::orderBy('updated_at', 'DESC')->get();
    return view('admin.post.index', ['posts' => $posts]);
  }
    
     public function edit($id)
    {
        $post = Post::find($id);
        return view('admin.post.edit')->withPost($post);
    }
    
      public function create()
    {
        // load the create form (app/views/posts/create.blade.php)
        return view('admin.post.create');
    }
    public function store(Request $request)
    {
        $rules = array(
            'title'          => 'required|max:255',
            'content'         => 'required|unique:posts',
        );
        $validator = $this->validator($request->all(), $rules);
        if ($validator->fails()) {
            $this->throwValidationException(
                $request, $validator
            );
        } else {
            $date = date("Y-m-d H:i:s");
            $slug = str_slug($request->input('title'));
            $post               = new Post;
            $post->title         = $request->input('title');
            $post->slug = $slug;
            $post->content        = $request->input('content');
            $post->created_at   = $date;
            $post->updated_at   = $date;
            $post->published_at   = $date;
            $post->save();
            $url = '/blog/' . $slug;
            return redirect($url);
        }
    }
    
    public function validator(array $data)
    {
        return Validator::make($data, [
            'title'          => 'required|max:255',
            'content'         => 'required'
        ]);
    }
    
    public function update(Request $request, $id)
    {
        $rules = array(
            'title'              => 'required',
            'content'             => 'required'
        );
        $validator = $this->validator($request->all(), $rules);
        if ($validator->fails()) {
            $this->throwValidationException(
                $request, $validator
            );
        } else {
            $date = date("Y-m-d H:i:s");
            $post               = Post::find($id);
            $post->title         = $request->input('title');
            $post->content        = $request->input('content');
            $post->slug = str_slug($request->input('title'));
            $post->updated_at = $date;
            $post->save();
            return redirect('admin')->with('message', 'Successfully updated Post!');
        }
    }
    
     public function destroy($id)
    {
        // delete
        $post = Post::find($id);
        $post->delete();
        // redirect
        return redirect('admin')->withErrors(['msg', 'Supprimé']);
    }
}