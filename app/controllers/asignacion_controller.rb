class AsignacionController < ApplicationController
  before_action :authenticate_paciente!
  def index
    @citum = Citum.new
  end

  def create

    medico = Medico.find(params[:citum]["medico"])
    @citum = Citum.new(medico: , paciente: current_paciente)
    if @citum.save
      redirect_to root_path
    else
      respond_to do |format|
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @citum.errors, status: :unprocessable_entity }
      end
    end
  end

  def get_medicos
    @target = params[:target]
    @medicos = Medico.where(horario: params[:hour])
    @medicos = @medicos.map { |medico| [medico.nombre, medico.id] }
    respond_to do |format|
      format.turbo_stream
    end
  end

end
