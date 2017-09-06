package com.arief.mvc.jquery.webControllers;

import com.arief.mvc.jquery.entity.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Arief on 9/6/2017.
 */
@Controller
@RequestMapping("/person")
public class PersonFormController {


    @RequestMapping(value = "/form",method = RequestMethod.GET)
    public ModelAndView formViewForPerson(){
        return new ModelAndView("form","person",new Person());
    }

    @RequestMapping(value = "/form",method = RequestMethod.POST)
    public String processFormForPerson(@ModelAttribute("person")Person p , Model m){
        return "result";
    }

}
