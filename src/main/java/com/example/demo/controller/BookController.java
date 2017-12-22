package com.example.demo.controller;


import com.example.demo.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lei9 on 2017/12/2.
 */
@RestController
public class BookController {
    @Autowired
    BookService bookService;

    @RequestMapping(value = "/book", method = RequestMethod.POST)
    @ResponseBody
    public Object selectBook(@RequestBody Map<String, String> requestParams) {
        Map<String, Object> resultMap = new HashMap();
        String publishDate =requestParams.get("publishDate");
        System.out.print(publishDate + "\n");
        List<Map<String, Object>> book = this.bookService.selectBook(publishDate);
        resultMap.put("book", book);
        return resultMap;
    }

}
