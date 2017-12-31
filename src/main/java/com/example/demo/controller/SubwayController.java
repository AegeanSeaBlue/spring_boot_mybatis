package com.example.demo.controller;


import com.example.demo.service.SubwayService;
import jdk.nashorn.internal.runtime.logging.Logger;
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

    public Object selectLinesInfo(List<Integer> lineNum) {
        System.out.print(lineNum + "\n");
        Map<String, Object> resultMap = new HashMap<>();
        double[] linesInfo = {1.9, 2.9, 3.4, 3.5};
        resultMap.put("lines", linesInfo);
        return resultMap;
    }

    @RequestMapping(value = "/subway/add", method = RequestMethod.POST)
    @ResponseBody
    public Object addStations(@RequestBody Map<String, List> data) {
        Map<String, Object> resultMap = new HashMap<>();
        List stations = data.get("stations");
        System.out.print(stations+"\n");
        Integer add = this.subwayService.addStations(stations);
        resultMap.put("add", add);
        return resultMap;
    }


    @RequestMapping(value = "/subway/lines", method = RequestMethod.POST)
    @ResponseBody
    public Object selectLines(@RequestParam(value = "lineNum", required = false) List<Integer> lineNum) {
        return this.selectLinesInfo(lineNum);
    }
}
