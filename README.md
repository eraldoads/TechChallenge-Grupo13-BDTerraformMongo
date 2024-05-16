# TechChallenge-Grupo13-BDTerraformMongo

Este repositório é dedicado ao banco de dados MongoDB, no qual haverá uma collection destinada ao microsserviço de pagamentos.

O deploy de todos os recursos é realizado pelo Github Actions a partir dos arquivos Terraform.

## 🖥️ Grupo 13 - Integrantes
🧑🏻‍💻 *<b>RM352133</b>*: Eduardo de Jesus Coruja </br>
🧑🏻‍💻 *<b>RM352316</b>*: Eraldo Antonio Rodrigues </br>
🧑🏻‍💻 *<b>RM352032</b>*: Luís Felipe Amengual Tatsch </br>

## ☑️ Arquitetura
Na execução da action, é realizada a criação do cluster e do database no MongoBD Atlas:

![image](https://github.com/eraldoads/TechChallenge-Grupo13-BDTerraformMongo/assets/47857203/dc1b8da1-1949-4d1c-9fd9-a36dd222e325)

Neste momento, também é criado um Security Group na AWS onde podemos definir as regras de acesso ao database:

![image](https://github.com/eraldoads/TechChallenge-Grupo13-BDTerraformMongo/assets/47857203/bf94805f-b906-4189-961e-aa27932cd561)

De posse da connection string, podemos acessar o banco utilizando o MongoDB Compass e realizar a criação da collection:

![image](https://github.com/eraldoads/TechChallenge-Grupo13-BDTerraformMongo/assets/47857203/7fd33041-e4fc-4eb8-8a30-5cfe50c1bc34)

![image](https://github.com/eraldoads/TechChallenge-Grupo13-BDTerraformMongo/assets/47857203/ef1075cf-68e1-450b-a01f-55e02e04f15a)

![image](https://github.com/eraldoads/TechChallenge-Grupo13-BDTerraformMongo/assets/47857203/cddb22bf-f780-42ff-b184-401da8dace2e)


