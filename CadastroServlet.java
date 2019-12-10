package br.edu.usj.pet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CadastroServlet")
public class CadastroServlet extends HttpServlet {

    BancoCadastro Cadastro = new BancoCadastro();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String email = request.getParameter("email");
        String telefone  = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        String bairro = request.getParameter("bairro");
        String cidade = request.getParameter("cidade");
        String senha = request.getParameter("senha");

        CadastroCliente cliente = new CadastroCliente();

        cliente.setNome(nome);
        cliente.setCpf(cpf);
        cliente.setEmail(email);
        cliente.setTelefone(telefone);
        cliente.setEndereco(endereco);
        cliente.setBairro(bairro);
        cliente.setCidade(cidade);
        cliente.setSenha(senha);

        Cadastro.adicionaCadastro(cliente);

        request.setAttribute("Cadastro",Cadastro);
        RequestDispatcher rd = request.getRequestDispatcher("cadastro-cliente.jsp");
        rd.forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
