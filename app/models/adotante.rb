class Adotante < ApplicationRecord
  validates_presence_of :nome, :estado, :marcou_comprometimento
  validates :email,
            format: { with: /\A\S+@.+\.\S+\z/, message: "precisar ser um e-mail válido"  },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 }
  has_many :adocaos
  has_many :pnas, :through => :adocao

  def adotar(povo_filho)
    adocao = nil
    unless povo_filho.nil?
      adocao = Adocao.new
      adocao.adotante = self
      adocao.pna = povo_filho
      adocao.data_adocao = Date.new
      adocao.save
    end
    adocao
  end
end
