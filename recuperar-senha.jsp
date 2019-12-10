<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <title>Recuperação de senha - Nosso Pet Shop</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css" integrity="sha384-SI27wrMjH3ZZ89r4o+fGIJtnzkAnFs3E4qz9DIYioCQ5l9Rd/7UAa8DHcaL8jkWt" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="reset.css">
    </head>

    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <form action="#" method="POST">
                        <fieldset>
                            <br><br><br>
                            <label for="cpf">CPF*</label>
                            <input class="form-control" type="number" name="cpf" id="cpf" placeholder="digite seu cpf - somente números">
                            <br>
                            <label for="email">e-mail*</label>
                            <input class="form-control" type="email" name="email" id="email" placeholder="digite seu e-mail">
                            <br>
                            <button type="button" class="btn btn-primary">Enviar</button>
                            <br><br>
                            <a href="area-cliente.jsp">Entrar no sistema</a>
                        </fieldset>
                    </form>
                </div>
                <div class="col-md-3"></div>
            </div>
    </body>