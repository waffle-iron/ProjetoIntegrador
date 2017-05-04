class RelatorioPedagogicosController < ApplicationController
  before_action :set_relatorio_pedagogico, only: [:show, :edit, :update, :destroy]

  # GET /relatorio_pedagogicos
  # GET /relatorio_pedagogicos.json
  def index
    @relatorio_pedagogicos = RelatorioPedagogico.all
  end

  # GET /relatorio_pedagogicos/1
  # GET /relatorio_pedagogicos/1.json
  def show
  end

  # GET /relatorio_pedagogicos/new
  def new
    @relatorio_pedagogico = RelatorioPedagogico.new
    @relatorio_pedagogico.build_relatorio
  end

  # GET /relatorio_pedagogicos/1/edit
  def edit
  end

  # POST /relatorio_pedagogicos
  # POST /relatorio_pedagogicos.json
  def create
    @relatorio_pedagogico = RelatorioPedagogico.new(relatorio_pedagogico_params)

    respond_to do |format|
      if @relatorio_pedagogico.save
        format.html { redirect_to @relatorio_pedagogico, notice: 'Relatorio pedagogico was successfully created.' }
        format.json { render :show, status: :created, location: @relatorio_pedagogico }
      else
        format.html { render :new }
        format.json { render json: @relatorio_pedagogico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatorio_pedagogicos/1
  # PATCH/PUT /relatorio_pedagogicos/1.json
  def update
    respond_to do |format|
      if @relatorio_pedagogico.update(relatorio_pedagogico_params)
        format.html { redirect_to @relatorio_pedagogico, notice: 'Relatorio pedagogico was successfully updated.' }
        format.json { render :show, status: :ok, location: @relatorio_pedagogico }
      else
        format.html { render :edit }
        format.json { render json: @relatorio_pedagogico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatorio_pedagogicos/1
  # DELETE /relatorio_pedagogicos/1.json
  def destroy
    @relatorio_pedagogico.destroy
    respond_to do |format|
      format.html { redirect_to relatorio_pedagogicos_url, notice: 'Relatorio pedagogico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relatorio_pedagogico
      @relatorio_pedagogico = RelatorioPedagogico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relatorio_pedagogico_params
      params.require(:relatorio_pedagogico).permit(:rpe_objetivo, :rpe_atendimento, :relatorio_id, :relatorio_attributes => [:relatorio_data, :aluno_id, :funcionario_id])
    end
end
