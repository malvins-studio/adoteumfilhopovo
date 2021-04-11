# Preview all emails at http://localhost:3000/rails/mailers/adocao_mailer
class AdocaoMailerPreview < ActionMailer::Preview
  def nova_adocao
    adocao = Adocao.first
    if adocao.nil? or adocao.adotante.email.nil?
      povo = Pna.last

      adotante = Adotante.new
      adotante.email = 'malvins@gmailcom'
      adotante.nome = 'Michael Lins'
      adotante.marcou_comprometimento = true
      adotante.estado = 'DF'
      adotante.save

      adocao = Adocao.new
      adocao.adotante = adotante
      adocao.pna = povo
      adocao.save
    end
    AdocaoMailer.nova_adocao(adocao.pna, adocao.adotante)
  end
end
