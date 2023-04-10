Feature: CRUD do paciente
  As a paciente do site
  I want to me cadastrar, editar, consultar e excluir meus dados
  So that para manter meus dados atualizados


  Scenario: cadastrar paciente
    Given estou na tela de criar Paciente
    When eu preencho os campos de Nome com 'Lidyane Lopes', com a data '05/10/1995', com o CPF '58105321521', com o email 'lidyane@hotmail.com', com o CEP '55340-000', com a cidade 'Águas Belas', com o bairro 'São Sebastião', com o logradouro 'Rua da Liberdade 185' e com o completo 'Casa'
    And clico em Create Paciente
    Then Eu vejo a pagina do paciente 'Lidyane Lopes'

  Scenario: cadastrar paciente com nome invalido
    Given estou na tela de criar Paciente
    When eu preencho os campos de nome vazio '', com a data '05/10/1995', com o CPF '54073186795', com o email 'seuemail@hotmail.com', com o CEP '55340-000', com a cidade 'Águas Belas', com o bairro 'São Sebastião', com o logradouro 'Rua da Liberdade 185' e com o completo 'Casa'
    And clico em Create Paciente
    Then Eu vejo a mesagem "Nome can't be blank"