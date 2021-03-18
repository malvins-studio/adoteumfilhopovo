class AdocaoMailer < ApplicationMailer
  def nova_adocao(adocao)
    @adotante = adocao.adotante
    @povo = adocao.pna
    attachments['cartao_filho_povo.png'] = File.read("#{Rails.root}/app/assets/images/prayer_cards/carta_povo_#{@povo.id}.png")
    mail(to: @adotante.email, subject: "Seu filho povo chegou! Cuide bem dele!", from: "Adote um filho povo<contato@adoteumfilhopovo.org.br>")
  end
end
