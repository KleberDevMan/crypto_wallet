# COMANDO APRENDIDOS

<b>Associação com outra tabela</b> <br />

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

Valor aleatório de um array:
>> a = [1,2,45] <br>
>> a.sample

----

<b>Buscas</b> <br/>
retorna multiplos resultados:<br>
>> MiningType.where(acronym: 'PoW')

retorna único resultado<br>
>> MiningType.find(acronym: 'PoW')

---

<b>Tasks</b><br />
Ver tasks
>> rails -T <br />
>> rails -T dev <br />

---
<b>Arquivo.yml</b><br>
é um arquivos de dados.

---
i18n = Internacionalization <https://guides.rubyonrails.org/i18n.html>
<br>ATIVAÇÃO
1. add gem 
2. add arquivo locale.rb
3. configura os idiomas

USO

    I18n.t('hello') #chama uma chave lá do locales
    I18n.l() #formata para o padrão local

PARA AS MODELS

    Coin.human_attribute_name(:url_image)

---

<b>Ternario</b><br>

    I18n.locale == :en ? "Estados Unidos" : "Português do Brasil"

---
COOKIES E SESSÃO
    
    # ARMAZENA COOKIE (NAVEGADOR)
    cookies[:curso] = "."

    # ARMAZENA SESSION (SESSION)
    session[:curso] = "."
