# Diagrama de Classes — OAT 1

```mermaid
classDiagram
    Peca --> CategoriaPeca
    PecaController --> PecaRepository
    ServicoController --> ServicoRepository

    class CategoriaPeca {
      <<enumeration>>
      MOTOR
      SUSPENSAO
      FREIOS
      ELETRICA
      ACESSORIOS
    }
    class Peca {
      Long codigo
      String codigoBarras
      String fornecedorMarca
      Integer quantidadeEstoque
      Double precoCusto
      Double precoVenda
      LocalDateTime dataCadastro
      LocalDateTime dataUltimaAtualizacao
      String tamanho
      String cor
      CategoriaPeca categoria
    }
    class Servico {
      Long codigo
      String nome
      Integer tempoEstimadoMinutos
      Double custoTabelado
      LocalDateTime dataCriacao
      LocalDateTime dataUltimaAtualizacao
    }
    class PecaRepository {
      -PecaRepository()
      +getInstance()
      +save(Peca)
      +findAll()
      +findById(Long)
      +deleteById(Long)
    }
    class ServicoRepository {
      -ServicoRepository()
      +getInstance()
      +save(Servico)
      +findAll()
      +findById(Long)
      +deleteById(Long)
    }
    class PecaController
    class ServicoController
```
