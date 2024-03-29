class FoosController < ApplicationController
  before_action :set_foo, only: [:show, :edit, :update, :destroy]

  # GET /foos
  # GET /foos.json
  def index
    @foos = Foo.all
  end

  # GET /foos/1
  # GET /foos/1.json
  def show
  end

  # GET /foos/new
  def new
    @foo = Foo.new(bar: SecureRandom.uuid)
  end

  # GET /foos/1/edit
  def edit
  end

  # POST /foos
  # POST /foos.json
  def create
    @foo = Foo.new(foo_params)

    respond_to do |format|
      if @foo.save
        format.html { redirect_to @foo, notice: 'Foo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @foo }
      else
        format.html { render action: 'new' }
        format.json { render json: @foo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foos/1
  # PATCH/PUT /foos/1.json
  def update
    respond_to do |format|
      if @foo.update(foo_params)
        format.html { redirect_to @foo, notice: 'Foo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @foo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foos/1
  # DELETE /foos/1.json
  def destroy
    @foo.destroy
    respond_to do |format|
      format.html { redirect_to foos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo
      @foo = Foo.find_or_create_by(bar: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foo_params
      params.require(:foo).permit(:bar)
    end
end
