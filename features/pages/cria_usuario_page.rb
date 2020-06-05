class User < SitePrism::Page
    set_url '/users/new'
    element :nome, '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'
    element :btn_criar, 'input[value="Criar"]'

    #def preencher_usuario
     #   nome.set 'Zava'
     #   sobrenome.set 'QA'
     #   email.set 'abc@abc.com'
     #   endereco.set 'rua 14'
     #   universidade.set 'FGV'
     #   profissao.set 'QA Engineer'
     #   genero.set 'H'
     #   idade.set '32'
     #   btn_criar.click
    #end

    def preencher_usuario2 (nome, sobrenome, email, endereco, universidade, profissao, genero, idade)
        self.nome.set nome
        self.sobrenome.set sobrenome
        self.email.set email
        self.endereco.set endereco
        self.universidade.set universidade
        self.profissao.set profissao
        self.genero.set genero
        self.idade.set idade
        self.btn_criar.click
    end

    
end