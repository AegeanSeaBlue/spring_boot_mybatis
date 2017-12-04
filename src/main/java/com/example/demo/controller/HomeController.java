package com.example.demo.controller;


import com.example.demo.model.Home;
import com.example.demo.service.HomeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lei9 on 2017/12/2.
 */
@RestController
public class HomeController {
    @Autowired
    HomeService homeService;

    @RequestMapping(value = "/home", method = RequestMethod.POST)
    @ResponseBody
    public Object selectGroupMasterByTagId(@RequestBody Map<String, Object> requestParams) {
        //Map<String, Object> resultMap = new HashMap();
        Map<String, Object> home = requestParams;
        //List<Home> home = this.homeService.home();
        //resultMap.put("home", home);
        return home;
    }
}
