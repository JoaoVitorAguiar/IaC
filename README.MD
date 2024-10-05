# Projeto de Gerenciamento de Diretórios e Usuários

Este projeto é um script em Bash que automatiza a criação de diretórios, grupos e usuários em um sistema Linux. O script garante que as permissões estejam configuradas corretamente para cada diretório e grupo, permitindo que os usuários acessem apenas seus respectivos diretórios.

## Índice

- [Requisitos](#requisitos)
- [Instalação](#instalação)
- [Uso](#uso)
- [Verificação de Resultados](#verificação-de-resultados)

## Requisitos

Antes de executar o script, você precisará ter:

- Um sistema Linux (Ubuntu, CentOS, etc.)
- Acesso root ou permissões de sudo
- Git instalado

## Instalação

1. **Clone o repositório:**

   Abra o terminal e execute o seguinte comando:

   ```bash
   git clone https://github.com/JoaoVitorAguiar/IaC.git
   ```

2. **Navegue até o diretório do repositório:**

   ```bash
   cd IaC
   ```

3. **Dê permissão de execução ao script:**

   ```bash
   chmod +x setup.sh
   ```

## Uso

Para executar o script, você precisará de permissões de superusuário. Execute o seguinte comando:

```bash
sudo ./setup.sh
```

O script criará os seguintes diretórios:

- `/public`
- `/adm`
- `/ven`
- `/sec`

Além disso, os grupos e usuários serão criados conforme as definições no script. Cada usuário será solicitado a mudar sua senha no primeiro login.

## Verificação de Resultados

Após a execução do script, você pode verificar se tudo foi criado corretamente usando os seguintes comandos:

- **Verifique os diretórios:**

  ```bash
  ls -l /public /adm /ven /sec
  ```

- **Verifique os grupos:**

  ```bash
  getent group GRP_ADM
  getent group GRP_VEN
  getent group GRP_SEC
  ```

- **Verifique os usuários:**

  ```bash
  getent passwd
  ```
