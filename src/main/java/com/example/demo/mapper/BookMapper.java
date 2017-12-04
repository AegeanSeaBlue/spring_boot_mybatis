package com.example.demo.mapper;

import com.example.demo.model.Book;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by lei9 on 2017/12/2.
 */

public interface BookMapper {

    List<Map<String, Object>> selectBook(String publishDate);
}
