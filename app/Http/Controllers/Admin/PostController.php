<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Post;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class PostController extends Controller
{
    /**
   * Display a listing of the posts.
   *
   * @return Response
   */
  public function index()
  {
      $posts = Post::all();
    return view('admin.post.index', ['posts' => $posts]);
  }
    
     public function edit($id)
    {
        // get the Post
        $post = Post::find($id);
        // show the edit form and pass the Post
        return view('admin.post.edit')->withPost($post);
    }
    
    public function update(Request $request, $id)
    {
        $rules = array(
            'title'              => 'required',
            'content'             => 'required',
            'author'        => 'required|numeric'
        );
        $validator = $this->validator($request->all(), $rules);
        if ($validator->fails()) {
            $this->throwValidationException(
                $request, $validator
            );
        } else {
            $post               = Post::find($id);
            $post->title         = $request->input('title');
            $post->content        = $request->input('content');
            $post->author   = $request->input('author');
            $post->save();
            return redirect('admin')->with('message', 'Successfully updated Post!');
        }
    }
}