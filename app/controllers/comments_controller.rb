class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to  schedule_path(@comment.schedule.id)
    else
      @schedule = @comment.schedule
      @comments = @schedule.comments
      render "schedules/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:message).merge(user_id: current_user.id, schedule_id: params[:schedule_id])
  end
end
