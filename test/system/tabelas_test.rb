require "application_system_test_case"

class TabelasTest < ApplicationSystemTestCase
  setup do
    @tabela = tabelas(:one)
  end

  test "visiting the index" do
    visit tabelas_url
    assert_selector "h1", text: "Tabelas"
  end

  test "should create tabela" do
    visit tabelas_url
    click_on "New tabela"

    fill_in "Ano compra", with: @tabela.ano_compra
    fill_in "Celular", with: @tabela.celular
    fill_in "Cidade", with: @tabela.cidade
    fill_in "Comentario", with: @tabela.comentario
    fill_in "Email", with: @tabela.email
    fill_in "Frequencia", with: @tabela.frequencia
    check "Locacao" if @tabela.locacao
    fill_in "Nome1", with: @tabela.nome1
    fill_in "Nome2", with: @tabela.nome2
    fill_in "Nome3", with: @tabela.nome3
    fill_in "Nome4", with: @tabela.nome4
    fill_in "Nome5", with: @tabela.nome5
    fill_in "Nome principal", with: @tabela.nome_principal
    fill_in "Parentesco", with: @tabela.parentesco
    fill_in "Parentesco2", with: @tabela.parentesco2
    fill_in "Parentesco3", with: @tabela.parentesco3
    fill_in "Parentesco4", with: @tabela.parentesco4
    fill_in "Parentesco5", with: @tabela.parentesco5
    fill_in "Profissao", with: @tabela.profissao
    fill_in "Profissao1", with: @tabela.profissao1
    fill_in "Profissao2", with: @tabela.profissao2
    fill_in "Profissao3", with: @tabela.profissao3
    fill_in "Profissao4", with: @tabela.profissao4
    fill_in "Profissao5", with: @tabela.profissao5
    fill_in "Sugestao1", with: @tabela.sugestao1
    fill_in "Sugestao2", with: @tabela.sugestao2
    fill_in "Sugestao3", with: @tabela.sugestao3
    fill_in "Sugestao4", with: @tabela.sugestao4
    fill_in "Sugestao5", with: @tabela.sugestao5
    fill_in "Unidade", with: @tabela.unidade
    check "Zap" if @tabela.zap
    click_on "Create Tabela"

    assert_text "Tabela was successfully created"
    click_on "Back"
  end

  test "should update Tabela" do
    visit tabela_url(@tabela)
    click_on "Edit this tabela", match: :first

    fill_in "Ano compra", with: @tabela.ano_compra
    fill_in "Celular", with: @tabela.celular
    fill_in "Cidade", with: @tabela.cidade
    fill_in "Comentario", with: @tabela.comentario
    fill_in "Email", with: @tabela.email
    fill_in "Frequencia", with: @tabela.frequencia
    check "Locacao" if @tabela.locacao
    fill_in "Nome1", with: @tabela.nome1
    fill_in "Nome2", with: @tabela.nome2
    fill_in "Nome3", with: @tabela.nome3
    fill_in "Nome4", with: @tabela.nome4
    fill_in "Nome5", with: @tabela.nome5
    fill_in "Nome principal", with: @tabela.nome_principal
    fill_in "Parentesco", with: @tabela.parentesco
    fill_in "Parentesco2", with: @tabela.parentesco2
    fill_in "Parentesco3", with: @tabela.parentesco3
    fill_in "Parentesco4", with: @tabela.parentesco4
    fill_in "Parentesco5", with: @tabela.parentesco5
    fill_in "Profissao", with: @tabela.profissao
    fill_in "Profissao1", with: @tabela.profissao1
    fill_in "Profissao2", with: @tabela.profissao2
    fill_in "Profissao3", with: @tabela.profissao3
    fill_in "Profissao4", with: @tabela.profissao4
    fill_in "Profissao5", with: @tabela.profissao5
    fill_in "Sugestao1", with: @tabela.sugestao1
    fill_in "Sugestao2", with: @tabela.sugestao2
    fill_in "Sugestao3", with: @tabela.sugestao3
    fill_in "Sugestao4", with: @tabela.sugestao4
    fill_in "Sugestao5", with: @tabela.sugestao5
    fill_in "Unidade", with: @tabela.unidade
    check "Zap" if @tabela.zap
    click_on "Update Tabela"

    assert_text "Tabela was successfully updated"
    click_on "Back"
  end

  test "should destroy Tabela" do
    visit tabela_url(@tabela)
    click_on "Destroy this tabela", match: :first

    assert_text "Tabela was successfully destroyed"
  end
end
