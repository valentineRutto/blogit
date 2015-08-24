class CommentsController < ApplicationController
      def create
          @article = Article.find(params[:article_id]) #gets article in qsn
          @comment = @article.comments.create(comment_params)#creates commetn
          redirect_to article_path(@article)#redirects user to original article
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
