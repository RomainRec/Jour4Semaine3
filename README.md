# THP_S03_jour4

:smiley: :smiley: :smiley: :smiley: :smiley: :smiley: :smiley: :smiley: 

## Introduction:

Le projet consiste en gros à contacter toutes les mairies de France pour que ces dernières parlent de THP. On va scrapper, enregistrer dans un spreadsheet, puis envoyer des emails, avec une relance par Twitter. Le tout dans un dossier ruby bien rangé, en POO.❤️❤️❤️❤️❤️
C'est un excellent entrainement pour les projets plus conséquents de la formation. Comme il y a beaucoup à faire.

:fire: :fire: :fire: :fire: :fire: :fire::fire: :fire: :fire: :fire: :fire:

## Sur Slack :tea: :

* Guillaume Pichot   slack/  @Guillaume :tropical_fish:
* Romain Recher     slack/  @Romain :whale2:
* Samuel Assani   slack/  @Sassani :tiger2:
* Hai-Dang Ha-Thuc  slack/  @Hai-Dang :leopard:
* Fayçal Meghzili   slack/  @Fays :dolphin:

                   
                    
# Projet :wink: :
Voici le lien de fichier  [Grenoble](https://github.com/RomainRec/Jour4Semaine3).  
Ci-dessous la liste de l'éxécution des méthodes afin de vous y retrouver.  
Des commentaires sont présents dans le code pour aider.  


## Contenu :
*  app.rb :    permet de lancer le programme dans son terminal
*  email_to_send.rb :   le fichier qui contient la liste des emails :email:
*  townhall.json  :  le fichier qui contient les mairies
*  townhalls_adder_to_db.rb : le fichier était censé renvoyé le handle Twitter de chaque mairie... Malheureusement il ne fonctionne pas :grimacing:
*  townhalls_follower.rb : l'abonnement à un compte Twitter de mairie via l'API fonctionne. Mais cela marche pour le moment qu'avec des handles connus (sinon, il faut se référer au problème de *townhalls_adder_to_db.rb* :point_up:)

## Install des gems:

```
source "https://rubygems.org"
ruby '2.5.1'
gem 'rubocop', '~> 0.57.2'
gem 'pry'
gem 'nokogiri'
gem 'dotenv'
gem 'json'
gem 'csv'
gem 'gmail'
gem 'twitter'
```


Aussi :
```
   $> bundle install
```

devrait suffir pour profiter des gems.

## Pour executer ce code :

```
   $> ruby app.rb
```

permet de lancer le fichier sur le terminal.
:wink::wink::wink::wink::wink::wink:

Mais avant ça tu dois changer les identifiants gmail dans le fichier : 
**/lib/app/email_to_send.rb**

Remplace ENV["GMAIL_USERNAME"] par "ton mail", et ENV["GMAIL_PSW"] "ton mot de passe"

## Rendu :
On a envoyé 312 emails pour 312 mairies voila [la preuve](https://files.slack.com/files-pri/T3W8B88JW-FDGMC32HX/screen_shot_2018-10-18_at_18.46.50.png)

## Note sur la méthode de travail du groupe : :loop:
Nous avons bien travaillé en groupe avec des branches.
Malheureusement, nous avons eu quelques soucis avec notre repo alors ce repo ne reflète pas toute la chronologie du travail et tous les commits effectués :bulb:


                                             ❤️❤️❤️ MERCI A VOUS ❤️❤️❤️
