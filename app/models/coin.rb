class Coin < ApplicationRecord
  # belongs_to = pertence a
  # lê-se: "o campo mining_type pentence a outra tabela"
  belongs_to :mining_type
end
