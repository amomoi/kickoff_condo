class TabelasController < ApplicationController
  before_action :set_tabela, only: %i[ show edit update destroy ]

  # GET /tabelas or /tabelas.json
  def index
    releaseCrossDomain
    @tabelas = Tabela.all
  end

  # GET /tabelas/1 or /tabelas/1.json
  def show
  end

  # GET /tabelas/new
  def new
    @tabela = Tabela.new
  end

  # GET /tabelas/1/edit
  def edit
  end

  # POST /tabelas or /tabelas.json
  def create
    releaseCrossDomain
    @tabela = Tabela.new(tabela_params)

    respond_to do |format|
      if @tabela.save
        format.html { redirect_to @tabela, notice: "Tabela was successfully created." }
        format.json { render :show, status: :created, location: @tabela }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tabela.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tabelas/1 or /tabelas/1.json
  def update
    respond_to do |format|
      if @tabela.update(tabela_params)
        format.html { redirect_to @tabela, notice: "Tabela was successfully updated." }
        format.json { render :show, status: :ok, location: @tabela }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tabela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tabelas/1 or /tabelas/1.json
  def destroy
    @tabela.destroy!

    respond_to do |format|
      format.html { redirect_to tabelas_path, status: :see_other, notice: "Tabela was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tabela
      @tabela = Tabela.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tabela_params
      params.require(:tabela).permit(:nome_principal, :unidade, :celular, :email, :cidade, :profissao, :zap, :nome1, :profissao1, :parentesco, :nome2, :profissao2, :parentesco2, :nome3, :profissao3, :parentesco3, :nome4, :profissao4, :parentesco4, :nome5, :profissao5, :parentesco5, :ano_compra, :frequencia, :locacao, :sugestao1, :sugestao2, :sugestao3, :sugestao4, :sugestao5, :comentario)
    end

    def releaseCrossDomain
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = '*'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = '*'
    end

end
