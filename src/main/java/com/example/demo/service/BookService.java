package com.example.demo.service;

import com.example.demo.mapper.BookMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by lei9 on 2017/12/2.
 */
@Service
public class BookService {

    @Autowired
    BookMapper bookMapper;

    public List<Map<String, Object>> selectBook(String publishDate) {

        return this.bookMapper.selectBook(publishDate);

    }
}
