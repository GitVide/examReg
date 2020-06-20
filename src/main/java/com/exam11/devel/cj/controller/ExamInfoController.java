package com.exam11.devel.cj.controller;

import com.exam11.devel.cj.bean.ExamInfo;
import com.exam11.devel.cj.service.ExamInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/exam")
public class ExamInfoController {

    @Autowired
    private ExamInfoService examInfoService;


    @RequestMapping("/setting")
    public String getExamInfoList(Model model){
        List<ExamInfo> examInfoList = examInfoService.getExamInfo();
        model.addAttribute("examInfoList", examInfoList);
        return "jqgrid";
    }

}
