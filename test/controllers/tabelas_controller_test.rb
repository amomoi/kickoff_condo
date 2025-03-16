require "test_helper"

class TabelasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tabela = tabelas(:one)
  end

  test "should get index" do
    get tabelas_url
    assert_response :success
  end

  test "should get new" do
    get new_tabela_url
    assert_response :success
  end

  test "should create tabela" do
    assert_difference("Tabela.count") do
      post tabelas_url, params: { tabela: { ano_compra: @tabela.ano_compra, celular: @tabela.celular, cidade: @tabela.cidade, comentario: @tabela.comentario, email: @tabela.email, frequencia: @tabela.frequencia, locacao: @tabela.locacao, nome1: @tabela.nome1, nome2: @tabela.nome2, nome3: @tabela.nome3, nome4: @tabela.nome4, nome5: @tabela.nome5, nome_principal: @tabela.nome_principal, parentesco: @tabela.parentesco, parentesco2: @tabela.parentesco2, parentesco3: @tabela.parentesco3, parentesco4: @tabela.parentesco4, parentesco5: @tabela.parentesco5, profissao: @tabela.profissao, profissao1: @tabela.profissao1, profissao2: @tabela.profissao2, profissao3: @tabela.profissao3, profissao4: @tabela.profissao4, profissao5: @tabela.profissao5, sugestao1: @tabela.sugestao1, sugestao2: @tabela.sugestao2, sugestao3: @tabela.sugestao3, sugestao4: @tabela.sugestao4, sugestao5: @tabela.sugestao5, unidade: @tabela.unidade, zap: @tabela.zap } }
    end

    assert_redirected_to tabela_url(Tabela.last)
  end

  test "should show tabela" do
    get tabela_url(@tabela)
    assert_response :success
  end

  test "should get edit" do
    get edit_tabela_url(@tabela)
    assert_response :success
  end

  test "should update tabela" do
    patch tabela_url(@tabela), params: { tabela: { ano_compra: @tabela.ano_compra, celular: @tabela.celular, cidade: @tabela.cidade, comentario: @tabela.comentario, email: @tabela.email, frequencia: @tabela.frequencia, locacao: @tabela.locacao, nome1: @tabela.nome1, nome2: @tabela.nome2, nome3: @tabela.nome3, nome4: @tabela.nome4, nome5: @tabela.nome5, nome_principal: @tabela.nome_principal, parentesco: @tabela.parentesco, parentesco2: @tabela.parentesco2, parentesco3: @tabela.parentesco3, parentesco4: @tabela.parentesco4, parentesco5: @tabela.parentesco5, profissao: @tabela.profissao, profissao1: @tabela.profissao1, profissao2: @tabela.profissao2, profissao3: @tabela.profissao3, profissao4: @tabela.profissao4, profissao5: @tabela.profissao5, sugestao1: @tabela.sugestao1, sugestao2: @tabela.sugestao2, sugestao3: @tabela.sugestao3, sugestao4: @tabela.sugestao4, sugestao5: @tabela.sugestao5, unidade: @tabela.unidade, zap: @tabela.zap } }
    assert_redirected_to tabela_url(@tabela)
  end

  test "should destroy tabela" do
    assert_difference("Tabela.count", -1) do
      delete tabela_url(@tabela)
    end

    assert_redirected_to tabelas_url
  end
end
