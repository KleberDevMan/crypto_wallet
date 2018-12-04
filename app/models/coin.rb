class Coin < ApplicationRecord
  # belongs_to = "pertence a"
  # lê-se: "o campo mining_type pentence a outra tabela"
  # É obrigatorio preecher esse campo
  belongs_to :mining_type#, optional: true
  #
end
