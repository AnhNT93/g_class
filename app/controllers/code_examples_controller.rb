class CodeExamplesController < ApplicationController
  before_action :set_code_example, only: [:show, :edit, :update, :destroy]

  # GET /code_examples
  # GET /code_examples.json
  def index
    @code_examples = CodeExample.all
  end

  # GET /code_examples/1
  # GET /code_examples/1.json
  def show
    render :layout => false
  end

  # GET /code_examples/new
  def new
    @code_example = CodeExample.new
  end

  # GET /code_examples/1/edit
  def edit
  end

  # POST /code_examples
  # POST /code_examples.json
  def create
    @code_example = CodeExample.new(code_example_params)

    respond_to do |format|
      if @code_example.save
        format.html { redirect_to @code_example, notice: 'Code example was successfully created.' }
        format.json { render :show, status: :created, location: @code_example }
      else
        format.html { render :new }
        format.json { render json: @code_example.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_examples/1
  # PATCH/PUT /code_examples/1.json
  def update
    respond_to do |format|
      if @code_example.update(code_example_params)
        format.html { redirect_to @code_example, notice: 'Code example was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_example }
      else
        format.html { render :edit }
        format.json { render json: @code_example.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_examples/1
  # DELETE /code_examples/1.json
  def destroy
    @code_example.destroy
    respond_to do |format|
      format.html { redirect_to code_examples_url, notice: 'Code example was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_example
      @code_example = CodeExample.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_example_params
      params.require(:code_example).permit(:name, :content)
    end
end
