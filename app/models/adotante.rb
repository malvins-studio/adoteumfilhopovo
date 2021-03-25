class Adotante < ApplicationRecord
  validates_presence_of :nome, :estado, :marcou_comprometimento
  validates :email,
            format: { with: /\A\S+@.+\.\S+\z/, message: ": favor informar um e-mail válido"  },
            uniqueness: { case_sensitive: false },
            length: { minimum: 6, maximum: 254 }
  has_many :adocaos
  has_many :pnas, :through => :adocao

  def adotar(povo_filho)
    ENV["TZ"] ||= "America/Sao_Paulo" 
    adocao = nil
    unless povo_filho.nil?
      adocao = Adocao.new
      adocao.adotante = self
      adocao.pna = povo_filho
      adocao.data_adocao = Time.now
      adocao.save
    end
  end
end