package com.exam11.devel.cj.mapper;

import com.exam11.devel.cj.bean.ExamInfo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface ExamInfoMapper {

    List<ExamInfo> selectExamInfoList();
}
