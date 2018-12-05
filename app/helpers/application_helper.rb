module ApplicationHelper

    # formata a data para o padrão PT-BR
    def data_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end

    # RETORNA O AMBIENTE EM QUE A APLICAÇAO ESTA RODANDO
    def ambiente_rails
        if Rails.env.development?
            "Desenvolvimento"
        elsif Rails.env.production?
            "Produção"
        else
            "Teste"
        end
    end

    # RETORNA O IDIOMA DA APLICAÇÃO
    def locale
        I18n.locale == :en ? "Estados Unidos" : "Português do Brasil"
    end
end
