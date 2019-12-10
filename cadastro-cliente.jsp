<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="br.edu.usj.pet.CadastroCliente" %>
<%@ page import="br.edu.usj.pet.BancoCadastro" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <title>Cadastro do Cliente - Nosso Pet Shop</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css" integrity="sha384-SI27wrMjH3ZZ89r4o+fGIJtnzkAnFs3E4qz9DIYioCQ5l9Rd/7UAa8DHcaL8jkWt" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="reset.css">
    </head>

    <body>
            <div class="container">
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <form action="CadastroServlet" method="POST">
                                <fieldset>
                                    <label for="nome">Nome*</label>
                                    <input class="form-control" type="text" name="nome" id="nome" placeholder="digite seu nome completo">
                                    <br>
                                    <label for="cpf">CPF*</label>
                                    <input class="form-control" type="number" name="cpf" id="cpf" placeholder="digite seu cpf - somente números">
                                    <br>
                                    <label for="email">e-mail*</label>
                                    <input class="form-control" type="email" name="email" id="email" placeholder="digite seu e-mail">
                                    <br>
                                    <label for="telefone">Telefone*</label>
                                    <input class="form-control" type="tel" name="telefone" id="telefone" placeholder="digite seu telefone">
                                    <br>
                                    <label for="endereco">Endereço*</label>
                                    <input class="form-control" type="text" name="endereco" id="endereco" placeholder="digite o nome da sua rua">
                                    <br>
                                    <label for="bairro">Bairro*</label>
                                    <input class="form-control" type="text" name="bairro" id="bairro" placeholder="digite o bairro">
                                    <br>
                                    <label for="cidade">Cidade*</label>
                                    <input class="form-control" type="text" name="cidade" id="cidade" placeholder="digite a cidade">
                                    <br>
                                    <label for="senha">Defina sua Senha*</label>
                                    <input class="form-control" type="password" name="senha" id="senha" placeholder="senha com pelo menos 8 caracteres">
                                    <br>
                                    <label for="senha">Confirme sua Senha*</label>
                                    <input class="form-control" type="password" name="senha2" id="senha2" placeholder="confirme sua senha">
                                    <br>
                                    <button type="submit" class="btn btn-primary">Enviar</button>
                                    <br><br>
                                    <a href="area-cliente.jsp">Entrar no sistema</a>

                                </fieldset>
                            </form>
                        </div>
                        <div class="col-md-3"></div>
            </div>
    </body>