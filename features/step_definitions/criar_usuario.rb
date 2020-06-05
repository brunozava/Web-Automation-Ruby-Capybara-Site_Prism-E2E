Quando('eu cadastro meu usuario') do
    user.load
        @nome = 'Zava'
        @sobrenome = 'QA'
        @email = 'abc@abc.com'
        @endereco = 'Rua 13'
        @universidade = 'Saint'
        @profissao = 'SDET'
        @genero = 'H'
        @idade = '32'
    #user.preencher_usuario2(@nome,@sobrenome,@email,@endereco,@universidade,@profissao,@genero,@idade)
    user.preencher_usuario2('Zava','QA','abc@abc.com','Rua 13','Saint','SDET', 'H' ,'32')
end
  
Entao('eu verifico se o usuario foi cadastrado') do
    @texto = find('#notice')
    expect(@texto.text).to eql 'Usuário Criado com sucesso'
end