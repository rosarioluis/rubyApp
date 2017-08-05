class Marca < ApplicationRecord
  #se establece como campo requerido
  validates :nombre, presence: true
end
