package com.example.demo.service;

import com.example.demo.mapper.SubwayMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by lei9 on 2017/12/2.
 */
@Service
public class SubwayService {

    @Autowired
    SubwayMapper subwayMapper;

    public Integer addStations(List stations) {
        return this.subwayMapper.addStations(stations);
    }
}
