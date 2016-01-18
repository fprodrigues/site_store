class NewsController < ApplicationController
 	 def index
		@newss=News.all
  	end
	
	def new
	@news = News.new
	end
	
	def show
	@news = News.find(params[:id])
	end

	def create
		@news = News.new(news_params)
		@news.save
		flash[:success] = "Article has been created"
		redirect_to news_path
	end
	

	private
		def news_params 
			params.require(:news).permit(:title, :body)			
		end
	
	
end