## Requisitos de Uso:
- Possuir o Docker instalado na máquina;
- Possuir git instalado na máquina;
- A api a ser testada deve se utilizar do mongodb.
## Como Usar:
- Utilize **git clone** para clonar este repositório;
- Entre na pasta do repositório clonado e crie um arquivo **.env** com base no arquivo **.env-exemple** e na documentação da api;
- Verifique as variaveis de ambiente na documentação da api e as adicione no arquivo docker-compose.yml, caso necessário; 
- Execute o comando **chmod +x run.sh**, para permitir a execução do script;
- Execute o script com o comando **./run.sh**;
- Se tudo ocorrer com sucesso, 03 container devem estar ativos: **db, api e client**;
- Entre no container **client** por meio do comando, **docker exec -it client bash**;
- Para acessar os **endpoints** da api dentro do container **client**, deve ser utilizado o comando **curl**, com o seguinte modelo para a url: **api:{PORTA}/{RECURSO}**;
- Siga a documentação da api para realizar as requisições.