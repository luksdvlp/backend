package br.edu.usj.pet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BancoCadastro {

    public List<CadastroCliente> getCadastroCliente() {

        Connection conexao = new ConnectionFactory().getConnection();
        String sql = "select * from cliente";
        List<CadastroCliente> retorno = new ArrayList<>();

        try{
            PreparedStatement query = conexao.prepareStatement(sql);
            ResultSet rs = query.executeQuery();

            while(rs.next()) {
                String nome = rs.getString("nome");
                String cpf = rs.getString("cpf");
                String email = rs.getString("email");
                String telefone = rs.getString("telefone");
                String endereco = rs.getString("endereco");
                String bairro = rs.getString("bairro");
                String cidade = rs.getString("cidade");
                String senha = rs.getString("senha");

                CadastroCliente c = new CadastroCliente();

                c.setNome(nome);
                c.setCpf(cpf);
                c.setEmail(email);
                c.setTelefone(telefone);
                c.setEndereco(endereco);
                c.setBairro(bairro);
                c.setCidade(cidade);
                c.setSenha(senha);

                retorno.add(c);

            }

            rs.close();
            query.close();
            conexao.close();

        }catch (SQLException e) {
            e.printStackTrace();
        }
        return retorno;
    }
    public void adicionaCadastro(CadastroCliente c) {
        //pegar conexao
        Connection conexao = new ConnectionFactory().getConnection();

        String sql = "insert into cliente (nome,cpf,email,telefone,endereco,bairro,cidade,senha) values (?,?,?,?,?,?,?,?)";
        PreparedStatement query = null;
        try {
            query = conexao.prepareStatement(sql);
            query.setString(1,c.getNome());
            query.setString(2,c.getCpf());
            query.setString(3,c.getEmail());
            query.setString(4,c.getTelefone());
            query.setString(5,c.getEndereco());
            query.setString(6,c.getBairro());
            query.setString(7,c.getCidade());
            query.setString(8,c.getSenha());

            query.execute();
            query.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}


