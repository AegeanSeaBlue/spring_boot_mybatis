package com.example.demo.controller;


import com.example.demo.service.DeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lei9 on 2017/12/2.
 */
@RestController
public class DeviceController {
    @Autowired
    DeviceService deviceService;

    @RequestMapping(value = "/device", method = RequestMethod.GET)
    @ResponseBody
    public Object selectDevice(@RequestParam(value = "strategyID",required = false) Integer strategyID) {
        System.out.print(strategyID+"\n");
        Map<String, Object> resultMap = new HashMap();

        List<Map<String, Object>> deviceList = this.deviceService.selectDevice(strategyID);
        resultMap.put("deviceList", deviceList);
        return resultMap;
    }

}
