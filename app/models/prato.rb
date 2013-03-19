class Prato < ActiveRecord::Base
  attr_accessible :nome

  validates_presence_of :nome, message: " - deve ser preenchido"
  validates_uniqueness_of :nome, message: " - nome já cadastrado"

  has_and_belong_to_many :restaurantes
  has_one :receita
end
