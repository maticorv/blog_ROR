class ArticlesController < ApplicationController
	#get /articles
	def index
		# Todos los articulos
		@articles = Article.all
	end
	#get articles/:id
	def show
		# encontrar articulo por id
		@article = Article.find(params[:id])
	end
	#get articles/new
	def new
		@article = Article.new
	end
	#POST /articles
	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to @article
		else
			render :new

		end
	end
	#PuT /articles/:id
	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			redirect_to @article
		else
			render :edit
		end

	end
	def destroy
		@article = Article.find(params[:id])
		@article.destroy #elimina objeto de la base de datos
		redirect_to articles_path
	end
	def article_params
		params.require(:article).permit(:title,:body)
	end
	def edit
		@article = Article.find(params[:id])
	end
end