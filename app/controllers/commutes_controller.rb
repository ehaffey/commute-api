class CommutesController < ProtectedController
  before_action :set_commute, only: [:show, :update, :destroy]

  # GET /commutes
  def index
    @commutes = current_user.commutes

    render json: @commutes
  end

  # GET /commutes/1
  def show
    render json: @commute
  end

  # POST /commutes
  def create
    @commute = current_user.commutes.build(commute_params)

    if @commute.save
      render json: @commute, status: :created
    else
      render json: @commute.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /commutes/1
  def update
    if @commute.update(commute_params)
      render json: @commute
    else
      render json: @commute.errors, status: :unprocessable_entity
    end
  end

  # DELETE /commutes/1
  def destroy
    @commute.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commute
      @commute = current_user.commutes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def commute_params
      params.require(:commute).permit(:date, :mode, :time, :user_id)
    end
end
