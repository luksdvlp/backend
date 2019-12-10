<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <title>Nosso Pet Shop</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css" integrity="sha384-SI27wrMjH3ZZ89r4o+fGIJtnzkAnFs3E4qz9DIYioCQ5l9Rd/7UAa8DHcaL8jkWt" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="reset.css">
    </head>
    <body>
        <header>
            <ul class="navbar navbar-default">
                <li><img class="header" src="data:image/jpeg;base64,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" alt=""></li>
                <li><a class="menu" href="#quemsomos">Quem Somos</a></li>
                <li><a class="menu" href="#servicos">Serviços</a></li>
                <li><a class="menu" href="#promocoes">Promoções</a></li>
                <li><a class="menu" href="area-cliente.jsp" target="_blank">Área do Cliente</a></li>
                <li><a class="menu" href="#contato">Contato</a></li>
            </ul>
        </header>
        <main>
            <section class="section top">
                <div class="nosso">
                    <!-- <img class="img-responsive" src="https://cdn.pixabay.com/photo/2016/11/05/20/09/grooming-1801287__340.png" alt=""> -->
                    <h1 class="h1">Nosso Pet Shop</h1>
                    <h2 class="h2">O melhor Pet Shop de Florianópolis</h2>
                </div>
            </section>
            <article>               
                <section class="section quem_somos">
                    <h2 class="h2" id="quemsomos">Quem Somos</h2>
                    <h3 class="h3">Conheça um pouco da nossa história!</h3>
                    <p class="somos">Nosso Pet Shop atua no mercado desde 2010 e trabalha com o intuito de trazer sempre o melhor que existe no mercado pet para seus clientes.
                        Sempre em busca da qualidade dos produtos e serviços, a Nossa Pet Shop está em constante aprimoramento para o bem-estar animal e humano e
                        possui compromisso com a sustentabilidade minimizando danos aos animais e ao meio ambiente.
                    </p>
                </section>

                <section class="section servicos">
                    <h2 class="h2" id="servicos">Serviços</h2>
                    <h3 class="h3">Conheça Nossos Serviços!</h3>
                    <br/><br>
                    <table class="table-bordered col-md-8">
                        <thead class="table table--title">
                            <tr>
                                <th>Serviços</th>
                                <th>Especialidades</th>
                            </tr>
                        </thead>
                        <tfoot class="table table--footer">
                            <tr>
                                <td colspan="2">Consultar disponibilidade.</td>
                            </tr>
                        </tfoot>
                        <tbody class="table table--body">
                            <tr>
                                <td rowspan="3">Veterinária</td>
                                <td>Emergência</td>
                            </tr>
                            <tr>
                                <td>Consultas</td>
                            </tr>
                            <tr>
                                <td>Vacinas</td>
                            </tr>
                            <tr>
                                <td rowspan="3">Pet Shop</td>
                                <td>Banho e Tosa</td>
                            </tr>
                            <tr>
                                <td>Hidratação</td>
                            </tr>
                            <tr>
                                <td>Coloração de pêlos</td>
                            </tr>
                        </tbody>
                    </table>
                </section>

                <section class="section promocoes">
                        <h2 class="h2" id="promocoes">Promoções</h2>
                        <h3 class="h3">Responda nossa pesquisa e ganhe um brinde!</h3>
                        <br/><br>
                        <form action="#" method="POST">
                                <fieldset class="questionario">
                                    <div class="radio">
                                        <p>Você já é nosso cliente?</p>
                                        <br>
                                        <input type="radio" name="ck" id="ck1">
                                        <label class="radio-ck" for="ck1">Sim</label>
                                        <br /><br>
                                        <input type="radio" name="ck" id="ck2">
                                        <label class="radio-ck" for="ck2">Não</label>
                                        <br /><br>
                                        <input type="radio" name="ck" id="ck3">
                                        <label class="radio-ck" for="ck3">Sim, mas ainda não sou cadastrado</label>                                  
                                        <br /><br>
                                    </div>
                                    <br /><br>
                                    <div class="checkbox">
                                            <p>Qual(is) animal(is) você possui?</p>
                                            <br>
                                            <input type="checkbox" name="check" id="check1">                                       
                                            <label class="check check" for="check1">Cachorro</label>
                                            <br /><br>
                                            <input type="checkbox" name="check" id="check2">
                                            <label class="check" for="check2">Gato</label>
                                            <br /><br>
                                            <input type="checkbox" name="check" id="check3">
                                            <label class="check" for="check3">Aves</label>
                                            <br /><br>
                                            <input type="checkbox" name="check" id="check4">
                                            <label class="check" for="check4">Peixes</label>
                                            <br /><br>
                                            <input type="checkbox" name="check" id="check5">
                                            <label class="check" for="check5">Outros</label>
                                            <br /><br>
                                        </div>
                                        <br /><br>
                                        <div class="checkbox">
                                                <p>Qual(is) serviço(s) Pet você utiliza com mais frequência?</p>
                                                <br>
                                                <input type="checkbox" name="check" id="check6">                                       
                                                <label class="check check" for="check6">Consultas veterinárias</label>
                                                <br /><br>
                                                <input type="checkbox" name="check" id="check7">
                                                <label class="check" for="check7">Vacinas</label>
                                                <br /><br>
                                                <input type="checkbox" name="check" id="check8">
                                                <label class="check" for="check8">Emergência veterinária</label>
                                                <br /><br>
                                                <input type="checkbox" name="check" id="check9">
                                                <label class="check" for="check9">Banho e tosa</label>
                                                <br /><br>
                                                <input type="checkbox" name="check" id="check10">
                                                <label class="check" for="check10">Outros</label>
                                                <br /><br>
                                            </div>
                                            <br /><br>
                                            <button type="button" class="btn btn-primary">Enviar</button>                                  
                </section>

                <section class="section area_cliente">  
                    <a href="area-cliente.jsp"></a>
                </section>

                <section class="section contato">
                    <h2 class="h2" id="contato">Contato</h2>
                    <h3 class="h3">Entre em contato com a gente!</h3>
                    <div class="container">
                            <div class="row">
                                    <div class="col-md-1"></div>
                                <div class="col-md-6">
                                    <form action="#" method="POST">
                                        <fieldset>
                                            <label for="nome">Nome*</label>
                                            <input class="form-control" type="text" name="nome" id="nome" placeholder="digite seu nome">
                                            <br>
                                            <label for="email">e-mail*</label>
                                            <input class="form-control" type="text" name="email" id="email" placeholder="digite seu e-mail">
                                            <br>
                                            <label for="option">Assunto*</label>
                                            <select class="form-control" id="option">
                                                <option>Consuta</option>
                                                <option>Emergência</option>
                                                <option>Banho e Tosa</option>
                                                <option>Coloração de Pêlos</option>
                                                <option>Hidratação</option>
                                                <option>Vacina</option>
                                                <option>Outros</option>
                                            </select>
                                            <br>
                                            <label for="mensagem">Mensagem*</label>
                                            <textarea class="form-control" name="mensagem" id="mensagem" cols="30" rows="10"></textarea>
                                            <br>
                                            <button type="button" class="btn btn-primary">Enviar</button>
                                        </fieldset>
                                    </form>
                                </div>
                                <div class="col-md-5">
                                    <address>
                                        <br><br>
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3535.291797319474!2d-48.589352585273886!3d-27.615478029529232!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x952737a511978c45%3A0x9a5cd1f17dd9f16e!2sR.%20Des.%20Pedro%20Silva%2C%202677%20-%20Coqueiros%2C%20Florian%C3%B3polis%20-%20SC%2C%2088080-701!5e0!3m2!1spt-BR!2sbr!4v1574616723887!5m2!1spt-BR!2sbr" width="350" height="200" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                                        <br><br>
                                            <p>Endereço: Rua Desembargador Pedro Silva, nº 2677</p>
                                        <p> Coqueiros - Florianópolis/SC.</p>
                                        <br><br>
                                        <p>Telefone: (48) 3333-3333</p>
                                        <br><br>
                                        <p>E-mail: contato@nossopetshop.com.br</p>
                                    </address>
                                </div>
                                
                            </div>
                    </div>
                </section>
            </article>
        </main>

        <footer class="card-footer text-muted">
            <p class="local">Florianópolis 2019.</p>
            <p class="localizacao">Atualizado em 02/12/2019.</p>
        </footer>
        
    </body>
</html>