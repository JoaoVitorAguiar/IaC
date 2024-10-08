# Desafio: Provisionamento Automático de Servidor Web

Neste projeto, implementamos um script para provisionar automaticamente um servidor web utilizando um servidor Apache. O script realiza a instalação de pacotes necessários, configura o servidor, baixa uma aplicação e faz o deploy em um diretório apropriado. Este projeto faz parte de um desafio prático para colocar em prática conceitos de automação e provisionamento de servidores.

## Funcionalidades

O script realiza as seguintes ações:

1. **Atualização do servidor**: Usa `apt-get` para atualizar e fazer o upgrade dos pacotes do sistema.
2. **Instalação de pacotes**: Instala o servidor Apache e o utilitário `unzip`.
3. **Download da aplicação**: Baixa um arquivo `.zip` contendo a aplicação diretamente do GitHub.
4. **Descompactação da aplicação**: Usa o `unzip` para extrair os arquivos da aplicação.
5. **Deploy da aplicação**: Copia os arquivos extraídos para o diretório padrão do Apache, permitindo que o conteúdo seja acessado via navegador.
6. **Reinicialização do Apache**: Reinicia o servidor Apache para garantir que as alterações entrem em vigor.

## Como Executar

### Pré-requisitos

- **Linux**: O script foi desenvolvido para sistemas baseados em Linux.
- **Permissões de superusuário**: O script requer permissões elevadas para instalar pacotes e modificar o diretório do Apache.

### Passo a Passo

1. Clone este repositório ou crie um novo repositório no GitHub com o script.

   ```bash
   git clone https://github.com/JoaoVitorAguiar/IaC.git
   ```

2. Execute o script com permissões de superusuário.

   ```bash
   sudo ./deploy_web_server.sh
   ```

3. Acesse o endereço IP do servidor ou `localhost` para visualizar a aplicação em execução:

   ```
   http://localhost
   ```
