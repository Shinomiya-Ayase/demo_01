package org.java.web;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.java.entity.User;
import org.java.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    HttpSession session;
    @Autowired
    UserService userService;
    @PostMapping("login")
    public String login(User user, Model model){
        User one = userService.getOne(new QueryWrapper<User>()
                .eq("username", user.getUsername()));
        if(one==null){
            model.addAttribute("msg","用户名不存在!").addAttribute("user",user);
            return "/index";
        }else if(!one.getPwd().equals(user.getPwd())){
            model.addAttribute("msg","密码错误!").addAttribute("user",user);
            return "/index";
        }
        session.setAttribute("user",one);
        return "redirect:/to/index";
    }

    @GetMapping("logout")
    public String logout(){
        session.invalidate();
        return "redirect:/to/index";
    }

    @PostMapping("reg")
    public String reg(User user){
        userService.save(user);
        return "redirect:/to/index";
    }

    @GetMapping("/to/{t}")
    public String to(@PathVariable String t){
        return "/"+t;
    }
}
