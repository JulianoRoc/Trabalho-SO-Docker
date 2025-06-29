package br.ufsm.csi.trabalhopoowspring.controller;

import br.ufsm.csi.trabalhopoowspring.service.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.DispatcherServlet;

@Controller
@RequestMapping("")
public class LoginController {
    private final DispatcherServlet dispatcherServlet;

    public LoginController(DispatcherServlet dispatcherServlet) {
        this.dispatcherServlet = dispatcherServlet;
    }

    @GetMapping
    public String index() {
        return "index";
    }

    @PostMapping("/login")
    public String login(Model model, String email, String senha) {
        System.out.println("Realizando o login!");

        if (new LoginService().autenticar(email, senha)) {
            return "redirect:/dashboard";
        } else {
            model.addAttribute("msg", "Login ou Senha incorreto!");
            return "index";
        }
    }

    @GetMapping("/dashboard")
    public String dashboard() {
        return "pages/dashbord";
    }
}
