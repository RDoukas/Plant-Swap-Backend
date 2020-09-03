class Api::MessagesController < ApplicationController
  def create
    @message = Message.new(
      body: params[:body],
      user_id: current_user.id,
      conversation_id: params[:conversation_id]
    )
    if @message.save
      render "show.json.jb"
    else
      render json: { errors: @message.errors.full_messages }, status: :bad_request
    end
  end 

  def show
    @message = Message.find_by(id: params[:id])
    @conversation = Conversation.find_by(id: @message.conversation_id)
    if @conversation.sender_id == current_user.id || @conversation.recipient_id == current_user.id
      render 'show.json.jb'
    else
      render json: {}, status: :forbidden
    end
  end
end
