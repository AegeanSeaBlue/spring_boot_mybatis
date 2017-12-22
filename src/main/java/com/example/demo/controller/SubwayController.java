package com.example.demo.controller;


import com.example.demo.service.SubwayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lei9 on 2017/12/2.
 */
@RestController
public class SubwayController {
    @Autowired
    SubwayService subwayService;

    @RequestMapping(value = "/subway/add", method = RequestMethod.POST)
    @ResponseBody
    public Object addSubway(@RequestBody Map<String, List> requestParams) {
        Map<String, Object> resultMap = new HashMap();
        List<Object> lines = requestParams.get("lines");
        System.out.print(lines + "\n");
        List<Map<String, Object>> book = this.subwayService.selectStations();
        resultMap.put("book", book);
        return resultMap;
    }

}
