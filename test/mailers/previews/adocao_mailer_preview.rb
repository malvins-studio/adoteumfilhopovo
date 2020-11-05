# Preview all emails at http://localhost:3000/rails/mailers/adocao_mailer
class AdocaoMailerPreview < ActionMailer::Preview
  def nova_adocao
    adotante = Adotante.first
    if adotante.nil? or adotante.email.nil?
      adotante = Adotante.new
      adotante.email = 'malvins@gmailcom'
      adotante.nome = 'Michael Lins'
      adotante.marcou_comprometimento = true
      adotante.estado = 'DF'
    end
    AdocaoMailer.nova_adocao(adotante)
  end
end
