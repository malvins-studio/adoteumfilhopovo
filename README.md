# Adote um Filho Povo

Um projeto idealizado pela [Associação Missionária para Difusão do Evangelho](https://amide.org.br) (AMIDE), baseado em dados do [Projeto Josué](https://joshuaproject.net).

## Stack
- Ruby 3.0.0
- Rails 6.1.3
- MySql (or MariaDB)

## Instalando as dependências
Instale o `bundler`
```
gem install bundler
```
Mude para a pasta do projeto 
```
cd <path_projeto>
```
Instale as dependências do projeto com o bundler
```
bundle install
```
## Banco de dados e tabelas
Configure o arquivo e migre as tabelas de banco de dados
```
rails db:migrate
```
Popule a base de dados (Apagará dados existentes e incluirá valores padrão iniciais. Ache-os em db/seeds.rb)
```
rails db:seed
```
## Running the app locally
Open a separate terminal and run `guard` for automatic refreshing view files:
```
guard
```
Install the Livereload Chrome plugin
```
https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei
```
Or check another option from Livereload documentation
```
https://github.com/mockko/livereload/blob/master/README-old.md
```
Finally, access it in the default uri:port
```
http://localhost:3000
```

## Troubleshooting
Tentando depurar com Ruby 3 utilizando `debase`
- Instalar debase fix: gem install debase -v 0.2.5.beta2
- Ainda não está liberado debase para Ruby 3 especificamente

### Credits
Many thanks to Ana Maria from Amide 
