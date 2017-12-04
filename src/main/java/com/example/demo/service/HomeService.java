package com.example.demo.service;

import com.example.demo.mapper.HomeMapper;
import com.example.demo.model.Home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lei9 on 2017/12/2.
 */
@Service
public class HomeService {

    @Autowired
    HomeMapper homeMapper;

    public List<Home> home() {

        return this.homeMapper.selectHome();

    }
}
