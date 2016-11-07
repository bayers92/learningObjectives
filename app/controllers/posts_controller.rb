class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  def get_random_question
    if current_user.blockyy1 
      @block1 = Post.where("block =?", 1)
    end
    if current_user.blockyy2 
      @block2 = Post.where("block =?", 2)
    end
    if current_user.blockyy3 
      @block3 = Post.where("block =?", 3)
    end
    if current_user.blockyy4 
      @block4 = Post.where("block =?", 4)
    end
    if current_user.blockyy5 
      @block5 = Post.where("block =?", 5)
    end

    @eligibles = Array(@block1)+Array(@block2)+Array(@block3)+Array(@block4)+Array(@block5)

    @post = @eligibles.shuffle.first()

    if @post != nil
      redirect_to @post
    else
      respond_to do |format|
        format.html { redirect_to root_url, notice: '< Please select at least 1 block.' }
        format.json { render :show, status: :ok, location: @post }
      end
    end
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to root_url, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:question, :body, :image_uno, :image_dos, :image_tres, :image_quatro, :block, :label, :marker)
    end
end
