# Padrão de Projeto: Bridge (Java)

Este projeto é uma implementação prática do padrão de projeto estrutural **Bridge**, desenvolvida para demonstrar o desacoplamento entre uma abstração e sua implementação.

## 📌 Sobre o Projeto

O exemplo simula o funcionamento de **Controles Remotos (Abstração)** operando diferentes **Dispositivos (Implementação)**, como TVs e Rádios. 

A estrutura permite que:
1. Novos dispositivos sejam adicionados sem alterar os controles.
2. Novos tipos de controles (ex: controle com funções especiais) sejam criados sem alterar os dispositivos.

## 🏗️ Estrutura do Projeto

O projeto segue uma organização de pacotes para separar as responsabilidades:

```text
.
├── src/                 # Código-fonte do projeto (Arquivos .java)
│   ├── Main.java        # Classe principal (Entry point)
│   ├── Controllers/     # Pacote de Abstrações (Controles)
│   └── Devices/         # Pacote de Implementações (Dispositivos)
├── out/                 # Bytecodes compilados (.class) - Gerado no build
├── manage.sh            # Script de automação para Linux/macOS/Git Bash
├── manage.ps1           # Script de automação para Windows PowerShell
├── Makefile             # Orquestrador de build universal (Make)
└── README.md            # Documentação do projeto
