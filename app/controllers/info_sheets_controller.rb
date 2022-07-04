class InfoSheetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_info_sheet, only: %i[show edit update destroy]

  def index
    @info_sheets = current_user.info_sheets
  end

  def show
    @info_sheet
  end

  def new
    @info_sheet = InfoSheet.new
  end

  def create 
    @info_sheet = current_user.info_sheets.build(info_sheet_params)

    if @info_sheet.save 
      redirect_to info_sheets_path
    end
  end
end

private

  def info_sheet_params
    params.require(:info_sheet).permit(:title)
  end

  def set_info_sheet 
    @info_sheet = InfoSheet.find(params[:id])
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

