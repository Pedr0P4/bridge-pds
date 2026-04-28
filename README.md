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
```

## 🛠️ Opções de Build e Execução

O projeto oferece múltiplas formas de automação para se adequar ao seu sistema operacional e fluxo de trabalho.

### 1. Universal (Makefile)
Recomendado para qualquer sistema que possua a ferramenta `make` instalada.
* **Build e Run (Combo):** `make`
* **Apenas Compilar:** `make build`
* **Limpar arquivos:** `make clean`

### 2. Windows (PowerShell)
Ideal para usuários de Windows utilizando o Terminal do Windows ou o terminal integrado do VS Code/Zed.
* **Compilar:** `.\manage.ps1 build`
* **Executar:** `.\manage.ps1 run`
* **Limpar:** `.\manage.ps1 clean`
> **Nota:** Caso receba um erro de permissão, execute o comando abaixo uma vez no PowerShell: 
> `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

### 3. Linux / macOS / Git Bash (`.sh`)
Ideal para ambientes Unix-like ou terminais emulados no Windows.
* **Compilar:** `./manage.sh build`
* **Executar:** `./manage.sh run`
* **Limpar:** `./manage.sh clean`
> **Nota:** Lembre-se de conceder permissão de execução ao arquivo (apenas na primeira vez): 
> `chmod +x manage.sh`
