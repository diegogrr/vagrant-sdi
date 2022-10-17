# Repositório de Vagrantfiles

Vagrantfiles para serem utilizados na disciplina de Sistemas Distribuídos.

## O que é Vagrant?
Vagrant é um utilitário de linha de comando de código aberto que permite criar e gerenciar máquinas virtuais usando os hipervisores de virtualização como VirtualBox, VMware e outros. Antes de instalar o Vagrant em qualquer sistema, você deve primeiro garantir a instalação de um hypervisor de virtualização.


## Preparação do desktop

Repositório com conteúdo sobre Vagrant: 

[![diegogrr/vagrant-sdi](https://img.shields.io/github/stars/diegogrr/vagrant-sdi?label=diegogrr|vagrant-sdi&logo=github&style=for-the-badge)](https://github.com/diegogrr/vagrant-sdi)


> **IMPORTANTE!** - Verifique os passos abaixo antes de começar

1. Garantir que o [Intel VMX/VT](https://www.asus.com/br/support/FAQ/1043786/) ou [AMD-V/SVM](https://www.asus.com/br/support/FAQ/1038245/) está habilitado na BIOS

2. Instalar os pacotes:
  - [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
  - [Vagrant](https://www.vagrantup.com/downloads)
  - [git](https://git-scm.com/download/)

3. Clonar este repositório
```bash
git clone https://github.com/diegogrr/vagrant-sdi.git
```

4. Fazer o Download das Vagrant Boxes
```bash
$ vagrant box add --provider virtualbox ubuntu/bionic64 
$ vagrant box add --provider virtualbox centos/7 
$ vagrant box add --provider virtualbox ubuntu/jammy64 
$ vagrant box add --provider virtualbox peru/windows-server-2022-standard-x64-eval
``` 
