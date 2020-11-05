# frozen_string_literal: true

# Estados Brasileiros ja carregados em all
class Estado
  attr_reader :sigla, :nome

  @estados = [
    {sigla: 'AC', nome: 'Acre'},
    {sigla: 'AL', nome: 'Alagoas'},
    {sigla: 'AP', nome: 'Amapá'},
    {sigla: 'AM', nome: 'Amazonas'},
    {sigla: 'BA', nome: 'Bahia'},
    {sigla: 'CE', nome: 'Ceará'},
    {sigla: 'DF', nome: 'Distrito Federal'},
    {sigla: 'ES', nome: 'Espírito Santo'},
    {sigla: 'GO', nome: 'Goiás'},
    {sigla: 'MA', nome: 'Maranhão'},
    {sigla: 'MT', nome: 'Mato Grosso'},
    {sigla: 'MS', nome: 'Mato Grosso do Sul'},
    {sigla: 'MG', nome: 'Minas Gerais'},
    {sigla: 'PA', nome: 'Pará'},
    {sigla: 'PB', nome: 'Paraíba'},
    {sigla: 'PR', nome: 'Paraná'},
    {sigla: 'PE', nome: 'Pernambuco'},
    {sigla: 'PI', nome: 'Piauí'},
    {sigla: 'RJ', nome: 'Rio de Janeiro'},
    {sigla: 'RN', nome: 'Rio Grande do Norte'},
    {sigla: 'RS', nome: 'Rio Grande do Sul'},
    {sigla: 'RO', nome: 'Rondônia'},
    {sigla: 'RR', nome: 'Roraima'},
    {sigla: 'SC', nome: 'Santa Catarina'},
    {sigla: 'SP', nome: 'São Paulo'},
    {sigla: 'SE', nome: 'Sergipe'},
    {sigla: 'TO', nome: 'Tocantins'}
  ]

  def initialize(sigla, nome)
    @sigla = sigla
    @nome = nome
  end

  def self.all
    lista = []
    @estados.each do |uf|
      lista << Estado.new(uf[:sigla], uf[:nome])
    end
    lista
  end

  def self.nome_from_sigla(sigla)
    @estados[sigla]
  end

end