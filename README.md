# MecaniQA API — OAT 1

Projeto Spring Boot da OAT 1 da MecâniQA, seguindo as especificações do enunciado.

## Tecnologias
- Java 21
- Spring Boot
- Gradle Kotlin DSL
- REST API
- Persistência em memória

## Estrutura

```text
gradle/wrapper/
src/main/java/com/mecaniqa/api/
├── controller/
│   ├── PecaController.java
│   └── ServicoController.java
├── model/
│   ├── CategoriaPeca.java
│   ├── Peca.java
│   └── Servico.java
├── repository/
│   ├── PecaRepository.java
│   └── ServicoRepository.java
└── MecaniQaApiApplication.java
src/main/resources/application.properties
postman/mecaniQA-api.postman_collection.json
documentacao/diagrama-classes.md
build.gradle.kts
settings.gradle.kts
```

## Rotas

### Peças
- POST `/api/pecas`
- GET `/api/pecas`
- GET `/api/pecas/{codigo}`
- PUT `/api/pecas/{codigo}`
- DELETE `/api/pecas/{codigo}`

### Serviços
- POST `/api/servicos`
- GET `/api/servicos`
- GET `/api/servicos/{codigo}`
- PUT `/api/servicos/{codigo}`
- DELETE `/api/servicos/{codigo}`

## Regras da OAT
Os repositórios usam Singleton com construtor `private`, instância `static` e acesso por `getInstance()`. Não há banco de dados, `@Autowired` ou Spring Data Repository.

## Executar
Execute `MecaniQaApiApplication` na IDE ou rode `gradle bootRun` com Gradle instalado.
