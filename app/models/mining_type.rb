class MiningType < ApplicationRecord
  # has_many = "tem muitos"
  # lê-se: "mining_type possui muitas coins"
  has_many :coins
end
