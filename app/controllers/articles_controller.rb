class ArticlesController < ApplicationController
    def new
  end
    
      def create
  @article = Article.new(params[:article])
        @article.save
      end
end
