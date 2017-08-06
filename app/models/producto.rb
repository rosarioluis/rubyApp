class Producto < ApplicationRecord
  validates_presence_of :nombre, :message => "Campo requerido."
  validates_presence_of :marca, :message => "Campo requerido."
  validates :precio, :numericality => { greater_than: 1, less_than_or_equal_to: 100 }
end
