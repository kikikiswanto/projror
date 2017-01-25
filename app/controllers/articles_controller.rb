class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  end

  def new
  	 @article = Article.new
  end

  def create
  	@article = Article.new(params_article)

  	if @article.save

  		flash[:notice] = "Success Add Records"

  		redirect_to action: 'index'

  	else

  		flash[:error] = "data not valid"

  		render 'new'

  	end

  end

  


  def edit
  end

  def show
  	@article = Article.find_by_id(params[:id])
  end

  private
  	def params_article
  		params.require(:article).permit(:title, :content, :status)
  	end
end
