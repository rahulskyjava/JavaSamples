package com.mkyong.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mkyong.web.domain.Tag;

@Controller
public class MainController {

    List<Tag> data = new ArrayList<Tag>();

    MainController() {
        // init data for testing
        data.add(new Tag(1, "ruby"));
        data.add(new Tag(2, "rails"));
        data.add(new Tag(3, "c / c++"));
        data.add(new Tag(4, ".net"));
        data.add(new Tag(5, "python"));
        data.add(new Tag(6, "java"));
        data.add(new Tag(7, "javascript"));
        data.add(new Tag(8, "jscript"));

    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView getPages() {

        ModelAndView model = new ModelAndView("welcome");
        return model;

    }

    @RequestMapping(value = "/getTags", method = RequestMethod.GET)
    public @ResponseBody
    List<Tag> getTags(@RequestParam String tagName) {

        return simulateSearchResult(tagName);

    }

    private List<Tag> simulateSearchResult(String tagName) {

        List<Tag> result = new ArrayList<Tag>();

        // iterate a list and filter by tagName
        for (Tag tag : data) {
            if (tag.getTagName().contains(tagName)) {
                result.add(tag);
            }
        }

        return result;
    }

    //======================Our Action==========================================
//    @RequestMapping(value = "/authenticate", method = RequestMethod.GET)
//    public @ResponseBody
//    String authenticate(@RequestParam String username,@RequestParam String password) {
//
//        return "authenticated";
//
//    }
    @RequestMapping(value = "/authenticate", method = RequestMethod.POST)
    public ModelAndView authenticateUser(@RequestParam String login, @RequestParam String password) {

        boolean authenticated = true;
        // Process login and password....
        if (login.equals(password)) {
            authenticated = true;
        } else {
            authenticated = false;
        }

        if (authenticated) {
            ModelAndView model = new ModelAndView("example");
            
            // Add all the attributes....
            model.addObject("username", "rahul");
            model.addObject("testcases", "rahul");
            model.addObject("recenttestcase", "rahul");
            model.addObject("authenticated", "true");
            
            
            return model;
        } else {
            ModelAndView model = new ModelAndView("welcome");
            model.addObject("message","Wrong Username OR Password");
            return model;
        }
    } // authenticateUser

}
