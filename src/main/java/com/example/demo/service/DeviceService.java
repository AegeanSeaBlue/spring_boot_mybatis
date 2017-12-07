package com.example.demo.service;

import com.example.demo.mapper.DeviceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by lei9 on 2017/12/2.
 */
@Service
public class DeviceService {

    @Autowired
    DeviceMapper deviceMapper;

    public List<Map<String, Object>> selectDevice(Integer strategyID) {

        return this.deviceMapper.selectDevice(strategyID);

    }
}
