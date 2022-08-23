class MessagesController < ApplicationController
  before_action :set_message, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:new, :create, :confirmation]

  # GET /messages or /messages.json
  def index
    @messages = Message.all
  end

  def confirmation
  end

  # GET /messages/1 or /messages/1.json
  def show
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages or /messages.json
  def create
    @message = Message.new(message_params)
    
    validation_text = @message.validation_text
    #key = message_params[:key]
    #selected_hash = helpers.sentence_storage(key)

    if validation_text == helpers.answer_check(@message.key)
      respond_to do |format|
        if @message.save
          #this code works, but I want to comment it out for now during dev/testing
          #MessageMailer.new_message(@message).deliver
          format.html { redirect_to messages_confirmation_path, notice: @message.content}
          format.json { render :show, status: :created, location: @message }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @message.errors, status: :unprocessable_entity }
        end
      end

    else  
      respond_to do |format|
        format.html { redirect_to new_message_path, alert: "Error: You did not complete the sentence correctly" }
      end
    end
  end

  # PATCH/PUT /messages/1 or /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to message_url(@message), notice: "Message was successfully updated." }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1 or /messages/1.json
  def destroy
    @message.destroy

    respond_to do |format|
      format.html { redirect_to messages_url, notice: "Message was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
      params.require(:message).permit(:name, :email, :content, :validation_text, :key)
    end
end
