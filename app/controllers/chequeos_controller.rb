class ChequeosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chequeo, only: [:show, :update, :destroy]

  def index
    @users = User.all.order(:email)
    @chequeosdays = Chequeo.select(:fecha).order("fecha desc").distinct
    @chequeos = Chequeo.all
    @chequeo = Chequeo.new
  end

  def create
    @chequeo = current_user.chequeos.new(chequeo_params)

    if @chequeo.save
      redirect_to chequeos_path, notice: "Creado"
    else
      redirect_to chequeos_path, error: "Error al crear"
    end
  end

  def show
  end

  def destroy
    current_user.chequeos.find(@chequeo.id).destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Eliminada correctamente' }
      format.json { head :no_content }
    end
  end


  private

  def chequeo_params
    params.require(:chequeo).permit(:peso, :fecha)
  end

  def set_chequeo
    @chequeo = Chequeo.find(params[:id])
  end

end
