package br.ufsm.csi.trabalhopoowspring.service;

import br.ufsm.csi.trabalhopoowspring.model.Funcionario;

public class LoginService {
    public boolean autenticar(String email, String senha) {
        FuncionarioService funcionarioService = new FuncionarioService();
        Funcionario funcionario = funcionarioService.buscar(email);

        return senha.equals(funcionario.getSenha());
    }
}