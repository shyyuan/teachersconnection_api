class DialoguesController < ApplicationController
  before_action :set_dialogue, only: [:show, :update, :destroy]

  # GET /dialogues
  def index
    @dialogues = Dialogue.all

    render json: @dialogues
  end

  # GET /dialogues/1
  def show
    render json: @dialogue
  end

  # POST /dialogues
  def create
    @dialogue = Dialogue.new(dialogue_params)

    if @dialogue.save
      render json: @dialogue, status: :created, location: @dialogue
    else
      render json: @dialogue.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dialogues/1
  def update
    if @dialogue.update(dialogue_params)
      render json: @dialogue
    else
      render json: @dialogue.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dialogues/1
  def destroy
    @dialogue.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dialogue
      @dialogue = Dialogue.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dialogue_params
      params.require(:dialogue).permit(:teacher_id, :event_id, :content)
    end
end
