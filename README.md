# COMANDO APRENDIDOS

Associação com outra tabela. <br />
Passos:

1 ) Criar uma nova migração ( BANCO ): <br/>
 https://edgeguides.rubyonrails.org/active_record_migrations.html#creating-a-standalone-migration <br />
Ex:
- AddMiningTypeToCoins
-

3 ) Definir a relação na model ( MODEL ) <br />

https://guides.rubyonrails.org/association_basics.html#the-belongs-to-association <br />
Ex:
- belongs_to <br>
- 


4 ) Definar a relação na outra ( MODEL )
https://guides.rubyonrails.org/association_basics.html#the-belongs-to-association<br>
Ex:
- has_many<br/>
-

-----------

Valor aleatório de um array:
>> a = [1,2,45] <br>
>> a.sample

------------

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
