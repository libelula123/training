class ArticlesController < ApplicationController						
	def index
	puts '5555555555555555555555555555555555555'
		@articles = Article.all
	end
	
	def show
		puts '444444444444444444444444444444444444444'
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end
  
	def create
		@article = Article.new(article_params)

		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	def destroy
		puts '1111111111111111111111111111111111111111'
		@article = Article.find(params[:id])
		puts '1222222222222222222222222222222222222222222'
		@article.destroy
		puts '1333333333333333333333333333333333333333333'
		
		redirect_to articles_path
	end
  
private
	def article_params
		params.require(:article).permit(:title, :text)
	end
  
end
