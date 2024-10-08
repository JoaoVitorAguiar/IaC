# Projeto: Provisionamento Automático de Servidor Web

Este projeto automatiza a configuração de um servidor web Apache usando um script Bash. O objetivo é provisionar um servidor rapidamente, instalando os pacotes necessários, baixando uma aplicação e realizando seu deploy. Esta tarefa faz parte de um desafio prático de automação de servidores, ideal para ambientes Linux.

## Funcionalidades

O script realiza as seguintes tarefas:

1. **Atualização do servidor**: Atualiza e faz o upgrade dos pacotes do sistema usando `apt-get`.
2. **Instalação de pacotes**: Instala o servidor Apache2 e o utilitário `unzip`.
3. **Download da aplicação**: Baixa um arquivo `.zip` contendo a aplicação a partir de um repositório no GitHub.
4. **Descompactação da aplicação**: Extrai o conteúdo do arquivo baixado usando `unzip`.
5. **Deploy da aplicação**: Copia os arquivos descompactados para o diretório padrão do Apache (`/var/www/html`), permitindo que o conteúdo seja acessado via navegador.
6. **Reinicialização do Apache**: Reinicia o serviço Apache para garantir que a nova aplicação seja servida corretamente.

## Como Executar

### Pré-requisitos

- **Sistema Operacional**: Um sistema Linux (ex.: Ubuntu, Debian).
- **Permissões de superusuário**: Você precisará de permissões de `sudo` para executar o script, instalar pacotes e manipular diretórios do sistema.
- **Git**: Certifique-se de que o Git está instalado no seu sistema.

### Passo a Passo

1. **Clone o repositório:**

   Se ainda não tiver o repositório em sua máquina, use o seguinte comando para cloná-lo:

   ```bash
   git clone https://github.com/JoaoVitorAguiar/IaC.git
   ```

2. **Navegue até o diretório do projeto:**

   ```bash
   cd IaC
   ```

3. **Dê permissão de execução ao script:**

   Antes de executar, certifique-se de que o script tem permissão para ser executado:

   ```bash
   chmod +x deploy_web_server.sh
   ```

4. **Execute o script com permissões de superusuário:**

   Execute o script para provisionar o servidor:

   ```bash
   sudo ./deploy_web_server.sh
   ```

5. **Acesse o servidor web:**

   Abra o navegador e acesse o endereço IP do servidor ou `localhost`:

   ```bash
   http://localhost
   ```

### Verificação de Resultados

Após a execução do script, você pode verificar os resultados com os seguintes comandos:

- **Verificar se o Apache está em execução:**

  ```bash
  systemctl status apache2
  ```

- **Verificar o conteúdo do diretório do Apache:**

  ```bash
  ls -l /var/www/html
  ```
