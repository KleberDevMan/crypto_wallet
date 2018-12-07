### COMANDO APRENDIDOS

Rails Guides<br>
https://guides.rubyonrails.org/index.html

---

LEVANTAR APLICAÇÃO

1.Modo desenvolvimento
> rails s 
<br> rails c

2 . Mode test
> rails s -e test<br>
 rails c -e test


3 . Modo producao
> rails s -e production<br>
                        rails c -e production

---

ASSOCIACAO DE TABELAS E MODELs <br />

Passos:<br>
1) Criar uma nova migração ( BANCO ):
https://edgeguides.rubyonrails.org/active_record_migrations.html#creating-a-standalone-migration
    <br>Ex:
    - AddMiningTypeToCoins
    
2) Definir a relação na model ( MODEL ) <br />
https://guides.rubyonrails.org/association_basics.html#the-belongs-to-association <br />
Ex:
    - belongs_to <br>
    
3) Definar a relação na outra ( MODEL )
https://guides.rubyonrails.org/association_basics.html#the-belongs-to-association<br>
Ex:
    - has_many<br/>


----
ARRAY

Valor aleatório de um array:

    a = [1,2,45]
    a.sample

----

SELECT<br/>
retorna multiplos resultados:<br>

    MiningType.where(acronym: 'PoW')

retorna único resultado<br>

    MiningType.find(acronym: 'PoW')

---

TASKS<br />
Ver tasks
    
    rails -T
    rails -T dev

---
ARQUIVO.yml<br>
é um arquivos de dados.

---
i18n = Internacionalization<br> <https://guides.rubyonrails.org/i18n.html>
<br><br>ATIVAÇÃO
1. add gem 
2. add arquivo locale.rb
3. configura os idiomas

USO

    I18n.t('hello') #chama uma chave lá do locales
    I18n.l() #formata para o padrão local

PARA AS MODELS

    Coin.human_attribute_name(:url_image)

---

TERNÁRIO<br>

    I18n.locale == :en ? "Estados Unidos" : "Português do Brasil"

---
COOKIES E SESSÃO
    
    # ARMAZENA COOKIE (NAVEGADOR)
    cookies[:curso] = "."

    # ARMAZENA SESSION (SESSION)
    session[:curso] = "."    
---
ASSET PIPELINE
<https://guides.rubyonrails.org/asset_pipeline.html>
    
-  Notas:
    - Asset = JavaScript + CSS + Imagem
    - gem sprockets-rails: minifica/concatena/comprime os assets
    - uso de coffeScript e Sass
    - Muda o nome do asset toda vez que recarrega a página (Fingerprint)
    - É necessário o Note.js para que as gems que fazem a minificação do JS funcionem (ExecJS).
<br><br><br>
    - Os assets devem ficar em pastas específicas. (mas todos ficam disponiveis para serem acessados publicamente em: <localhost/3000/assets/>)
        - <b>app/assets</b>: Para assets criados pelo próprio Rails
        - <b>lib/assets</b>: Para assets que você mesmo criou
        - <b>vendor</b>/assets: Para assets que você “pegou” de
terceiros
<br><br><br>
    - Pré-compilando e isolando assets por controller:
        
             <%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
             <%= stylesheet_link_tag 'scaffolds', media: 'all', 'data-turbolinks-track': 'reload' %>
             <%= stylesheet_link_tag params[:controller], media: 'all', 'data-turbolinks-track': 'reload' %>
           
             <!--  import JavaScript-->
             <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
             <%= javascript_include_tag params[:controller], 'data-turbolinks-track': 'reload' %>
         
    - Misturando Assets com codigo ruby
        
            /* codigo ruby + CSS + SCSS */
            background-color: <%= Rails.env.development? ? '#DADADA' : 'red' %>;
              
            // codigo ruby + javaScript
            <% msg = Time.now < 12 ? "Bom dia!" : "Olá!!!" %>
            alert("<%= msg %>");
            
    - Compilando assets para colocar em produção
            
            rails -T assets
        
    - Biblioteca de terceiros (.js Vendor)
              
            * notify.js <https://notifyjs.jpillora.com/>
    
    - **rails-assets.org** (transforma as bibliotecas .js em gems)
            
            1. adiciona a gem
            2. adiciona o require no arquivo .js
    
    - YARN 
        <br>Gerenciador de pacotes .js
        <br><br>
        > yarn add "nome da lib.js"<br><br>
        yarn install #Quando a node_modules desaparece
        