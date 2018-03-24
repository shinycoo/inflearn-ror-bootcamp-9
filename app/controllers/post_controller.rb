class PostController < ApplicationController
  
  # skip_before_filter :require_login, :only => [:list]
  before_action :authenticate_user!, except: [ :list ]
  
  def create
    _author = params[:author]
    _title = params[:title]
    _contents = params[:contents]
    
    _lat = params[:lat]
    _lng = params[:lng]
    _address = params[:address]
    
    post = Post.new(author: _author, title: _title, contents: _contents) ## record / row
    post.user = current_user
    post.lat = _lat
    post.lng = _lng 
    post.address = _address
    post.save
    
    redirect_to controller:'post', action:'list'
  end

  def new
    
  end
  
  def list
    ## fix 19
    @posts = Post.all.paginate(page: params[:page], per_page: 5)
    
  end
  
  def modify
     
    _id = params[:id]
    @post = Post.find(_id)
    authorize_action_for @post
    
  end
  
  def update 
     
    _id = params[:id]
    _author = params[:author]
    _title = params[:title]
    _contents = params[:contents]
    
    @post = Post.find(_id)
    authorize_action_for @post
    
    @post.author = _author
    @post.title = _title
    @post.contents = _contents
    
    @post.save
    
    redirect_to controller: 'post', action: 'list'
  end
  
  def delete
     
    _id = params[:id]
    
    @post = Post.find(_id)
    authorize_action_for @post
    @post.destroy
    
    redirect_to controller: 'post', action: 'list'
  end
end
