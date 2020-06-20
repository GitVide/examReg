package com.exam11.devel.cj.service.impl;

import com.exam11.devel.cj.bean.ExamInfo;
import com.exam11.devel.cj.mapper.ExamInfoMapper;
import com.exam11.devel.cj.service.ExamInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExamInfoServiceImpl implements ExamInfoService {

    @Autowired
    private ExamInfoMapper examInfoMapper;


    @Override
    public List<ExamInfo> getExamInfo() {
        List<ExamInfo> examInfoList = examInfoMapper.selectExamInfoList();
        for (ExamInfo l: examInfoList) {
            System.out.println(l.getExamName());
        }
        return examInfoList;
    }
}
