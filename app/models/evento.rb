class Evento < ApplicationRecord

  has_many :participante

  validates :nombre,
  length: {minimum: 3, maximum: 50, message: "El nombre debe tener entre 3 y 50 caracteres"}

  validates :descripcion, length: {minimum: 3, maximum: 50, message: "El nombre debe tener entre 3 y 150 caracteres"}

  validates :nombre, :descripcion, :fecha, presence: {
    message: "Este campo es requerido."
  }
  validates :nombre, uniqueness: {message: "Este evento ya fue creado"}
  
end
