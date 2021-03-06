package com.exam11.devel.cj.service;

import com.exam11.devel.cj.bean.ExamInfo;

import java.util.List;

public interface ExamInfoService {
    List<ExamInfo> getExamInfo();

    List<ExamInfo> findAll(Integer page, Integer rows);

    Long findTotals();
}
