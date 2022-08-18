# Dotfiles

Repositório com meus arquivos de configuração pessoais, ainda pretendo melhorá-lo.

## O que são Dotfiles? 🤔
São arquivos ocultos utilizados para armazenar a configuração de algum programa, aplicativo ou ferramenta.

Esse termo é inspirado nos arquivos de configuração dos sistemas "Unix-like", que iniciam com um ponto.

## Por que gerenciar esses arquivos? 🧐
De maneira bem curta e direta: são arquivos locais que você precisará configurar novamente caso troque de máquina e não fizer backup deles.

Se não souber por onde começar, indico a leitura desses dois artigos (o primeiro foi o que me baseei):
- [The Best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)
- [Gerencie seus dotfiles de qualquer lugar com Git](https://blog.lsantos.dev/dotfiles-git/)

> **Obs**: O primeiro utiliza o conceito de utilizar um repositório "bare" e manter os arquivos em seus respectivos locais originais. O segundo utiliza o conceito de links.

## Comandos 📋 
Para fazer as operações do git, utilize o alias `dotfiles`:
```
$ dotfiles add .zshrc
$ dotfiles commit -m "feat: Add .zshrc"
$ dotfiles push
```

Como eu gosto muito do alias `gst`, para ver o status, criei o alias `dotst`:
```
$ dotst
```

## Configurar em outra máquina 💻
Verificar o tópico "Install your dotfiles onto a new system (or migrate to this setup)", desse [link](https://www.atlassian.com/git/tutorials/dotfiles).