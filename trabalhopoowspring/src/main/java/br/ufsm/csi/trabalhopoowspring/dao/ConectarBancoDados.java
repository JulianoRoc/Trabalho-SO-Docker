package br.ufsm.csi.trabalhopoowspring.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConectarBancoDados {

    public static Connection conectarBancoPostgres()
            throws ClassNotFoundException, SQLException {

        Class.forName("org.postgresql.Driver");
        System.out.println("Driver carregado");
        String url = "jdbc:postgresql://db:5432/trabalhopoow";
        String user = "postgres";
        String senha = "1234";
        Connection conn =
                DriverManager.getConnection(url, user, senha);
        return conn;
    }

    public Connection conectarBancoPostgresMySql(){
        return null;
    }
}
