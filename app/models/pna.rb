class Pna < ApplicationRecord

  has_many :adocao

  scope :povos_foto_nula, -> {
    where(photo_url: nil)
  }

  scope :total_povos_foto_nula, -> {
    povos_foto_nula.count
  }

  scope :povos_url_foto_invalida, -> {
    where(has_invalid_photo_url: true)
  }

  scope :total_povos_url_foto_invalida, -> {
   povos_url_foto_invalida.count
  }

  scope :total_povos_sem_foto, -> {
    povos_url_foto_invalida.or(povos_foto_nula).count
  }

  scope :povos_url_bandeira_invalida, -> {
    where(has_invalid_flag_url: true)
  }

  scope :total_povos_url_bandeira_invalida, -> {
    povos_url_bandeira_invalida.count
  }

  scope :proximo_da_fila, -> {
    order(:population=>:desc).order(:percent_evangelical=>:asc).first
  }
end
