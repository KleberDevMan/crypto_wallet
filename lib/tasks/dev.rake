# frozen_string_literal: true

namespace :dev do

  def show_sppiner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}...")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end

  desc 'Apaga, cria, migra e popula banco de dados'
  task popula_db: :environment do
    if Rails.env.development?

      show_sppiner("Apagando BD...") do
        %x{rails db:drop}
      end

      show_sppiner("Criando BD...") do
        %x{rails db:create}
      end

      show_sppiner("Migrando BD...") do
        %x{rails db:migrate}
      end

      show_sppiner("Adicionando coins...") do
        %x{rails dev:add_mining_types}
      end

      show_sppiner("Adicionando mining_types...") do
        %x{rails dev:add_moedas}
      end
    end
  end

  desc 'Cadastro de moedas'
  task add_moedas: :environment do
    coins = [
        {
            description: 'Bitcoin',
            acronym: 'BTC',
            url_image: 'https://www.criptomoedasfacil.com/wp-content/uploads/2018/01/wallet-bitcoin.jpg',
            mining_type: MiningType.find_by(acronym: 'PoW')
        },
        {
            description: 'Ethereum',
            acronym: 'ETH',
            url_image: 'https://cdn.awsli.com.br/300x300/507/507932/produto/18812222/1f6fe95f30.jpg',
            mining_type: MiningType.all.sample
        },
        {
            description: 'Iota',
            acronym: 'IOT',
            url_image: 'https://www.cryptocompare.com/media/1383540/iota_logo.png?width=200',
            mining_type: MiningType.all.sample
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
            description: 'Prool of Work',
            acronym: 'PoW'
        },
        {
            description: 'Prool of Stake',
            acronym: 'Pos'
        }
    ]
    mining_types.each do |mining_type|
      MiningType.find_or_create_by!(mining_type)
    end
  end
end
