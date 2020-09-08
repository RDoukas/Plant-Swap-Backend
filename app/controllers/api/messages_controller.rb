class Api::MessagesController < ApplicationController
  before_action :authenticate_user

  def create
    @user = current_user
    @conversation = Conversation.find_by(id: params[:conversation_id])
    if @conversation.sender_id == @user.id || @conversation.recipient_id == @user.id
      @message = Message.new(
        conversation_id: params[:conversation_id],
        text: params[:text],
        user_id: params[:user_id] || @user.id
      )
      if @message.save
        ActionCable.server.broadcast "messages_channel", {
          id: @message.id,
          conversation_id: @message.conversation_id,
          user_id: @message.user_id,
          text: @message.body,
          created_at: @message.created_at,
        }    
        render "show.json.jb", status: :created
      else
        render json: { errors: @message.errors.full_messages }, status: :bad_request
      end
    else
      render json: {}, status: :forbidden
    end
  end
  
  
  # def create
  #   @message = Message.new(
  #     body: params[:body],
  #     user_id: current_user.id,
  #     conversation_id: params[:conversation_id]
  #   )
  #   if @message.save
  #     render "show.json.jb"
  #   else
  #     render json: { errors: @message.errors.full_messages }, status: :bad_request
  #   end
  # end 

  # def show
  #   @message = Message.find_by(id: params[:id])
  #   @conversation = Conversation.find_by(id: @message.conversation_id)
  #   if @conversation.sender_id == current_user.id || @conversation.recipient_id == current_user.id
  #     render 'show.json.jb'
  #   else
  #     render json: {}, status: :forbidden
  #   end
  # end
end
