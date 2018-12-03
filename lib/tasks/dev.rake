# frozen_string_literal: true

namespace :dev do
  desc 'Cadastro de moedas'
  task add_moedas: :environment do
    coins = [
      {
        description: 'Bitcoin',
        acronym: 'BTC',
        url_image: ''
      },
      {
        description: 'Ethereum',
        acronym: 'ETH',
        url_image: ''
      },
      {
        description: 'Iota',
        acronym: 'IOT',
        url_image: ''
      }
    ]
    coins.each do |coin|
      Coin.find_or_create_by!(coin)
    end
  end

  desc 'Cadastro de tipos de mineração de dados de cada moeda'
  task add_mining_types: :environment do
    mining_types = [
      {
        name: 'Prool of Work',
        acronym: 'PoW'
      },
      {
        name: 'Prool of Stake',
        acronym: 'Pos'
      }
    ]
    mining_types.each do |mining_type|
      MiningType.find_or_create_by!(mining_type)
    end
  end
end
