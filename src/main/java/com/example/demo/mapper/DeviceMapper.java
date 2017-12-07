package com.example.demo.mapper;


import java.util.List;
import java.util.Map;

/**
 * Created by lei9 on 2017/12/2.
 */

public interface DeviceMapper {

    List<Map<String, Object>> selectDevice(Integer strategyID);
}
