### COMANDO APRENDIDOS

Rails Guides<br>
https://guides.rubyonrails.org/index.html

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
    - Os assets devem ficar em pastas específicas.
        - <b>app/assets</b>: Para assets criados pelo próprio Rails
        - <b>lib/assets</b>: Para assets que você mesmo criou
        - <b>vendor</b>/assets: Para assets que você “pegou” de
terceiros
<br><br><br>
    - Pré-compilando e isolando assets por controller:
    >> <!--  import CSS-->
         <%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
         <%= stylesheet_link_tag 'scaffolds', media: 'all', 'data-turbolinks-track': 'reload' %>
         <%= stylesheet_link_tag params[:controller], media: 'all', 'data-turbolinks-track': 'reload' %>
       
         <!--  import JavaScript-->
         <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
         <%= javascript_include_tag params[:controller], 'data-turbolinks-track': 'reload' %>