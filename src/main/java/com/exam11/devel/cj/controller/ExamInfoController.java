package com.exam11.devel.cj.controller;

import com.exam11.devel.cj.bean.ExamInfo;
import com.exam11.devel.cj.service.ExamInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ExamInfoController {

    @Autowired
    private ExamInfoService examInfoService;


    @RequestMapping(value = "/examSetting", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public Map<String, Object> getExamInfoList(Integer page, Integer rows) {
        //当前页数据
        List<ExamInfo> examInfoList = examInfoService.findAll(page, rows);
        //总条数
        Long totals = examInfoService.findTotals();
        //总页数
        Long totalPages = totals % page == 0 ? totals / rows : totals / rows + 1;
        Map<String, Object> map = new HashMap<>();
        map.put("page", page);
        map.put("rows", examInfoList);
        map.put("total", totalPages);
        map.put("records", totals);
        return map;
    }

    @RequestMapping("/jqgrid")
    public String jqgrid() {
        return "jqgrid";
    }
}
