class LedgersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ledger, only: %i[show edit update destroy]

  def index
    @ledgers = current_user.ledgers
  end

  def show
    @ledger
  end

  def new
    @ledger = Ledger.new
  end

  def create 
    @ledger = current_user.ledgers.build(ledger_params)

    if @ledger.save 
      redirect_to ledgers_path
    end
  end
end

private

  def ledger_params
    params.require(:ledger).permit(:title)
  end

  def set_ledger 
    @ledger = Ledger.find(params[:id])
  end

# class ModelsController < ApplicationController
#   before_action :find_model, only: [:show, :edit, :update, :destroy]

#   # GET /models
#   # GET /models.json
#   def index
#     @models = Model.all

#     respond_to do |wants|
#       wants.html # index.html.erb
#       wants.json  { render json: @models }
#     end
#   end

#   # GET /models/1
#   # GET /models/1.json
#   def show
#     respond_to do |wants|
#       wants.html # show.html.erb
#       wants.json  { render json: @model }
#     end
#   end

#   # GET /models/new
#   # GET /models/new.json
#   def new
#     @model = Model.new

#     respond_to do |wants|
#       wants.html # new.html.erb
#       wants.json  { render json: @model }
#     end
#   end

#   # GET /models/1/edit
#   def edit
#   end

#   # POST /models
#   # POST /models.json
#   def create
#     @model = Model.new(params[:model])

#     respond_to do |wants|
#       if @model.save
#         flash[:notice] = 'Model was successfully created.'
#         wants.html { redirect_to(@model) }
#         wants.json  { render json: @model, status: :created, location: @model }
#       else
#         wants.html { render action: "new" }
#         wants.json  { render json: @model.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PUT /models/1
#   # PUT /models/1.json
#   def update
#     respond_to do |wants|
#       if @model.update(params[:model])
#         flash[:notice] = 'Model was successfully updated.'
#         wants.html { redirect_to(@model) }
#         wants.json  { head :ok }
#       else
#         wants.html { render action: "edit" }
#         wants.json  { render json: @model.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /models/1
#   # DELETE /models/1.json
#   def destroy
#     @model.destroy

#     respond_to do |wants|
#       wants.html { redirect_to(models_url) }
#       wants.json  { head :ok }
#     end
#   end

#   private
#     def find_model
#       @model = Model.find(params[:id])
#     end

# end

