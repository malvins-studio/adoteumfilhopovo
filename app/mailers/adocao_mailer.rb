class AdocaoMailer < ApplicationMailer
  def nova_adocao
    mail(to: "malvins@gmail.com", subject: "Seu povo não alcançado chegou! Cuide bem dele!")
  end
end
