class Qualificacao < ActiveRecord::Base
  attr_accessible :nota, :valor_gasto, :cliente_id, :restaurante_id
  
  validates_presence_of :nota, message: " - deve ser preenchido"
  validates_presence_of :valor_gasto, message: " - dever ser preenchido"
  validates_numericality_of :nota, greater_than_or_equal_to: 0, less_than_or_equal_to: 10, message: " - deve ser um número entre 0 e 10 "
  validates_numericality_of :valor_gasto, greater_than: 0, message: "- deve ser um número maior que 0"
end
