package com.exam11.devel.cj.mapper;

import com.exam11.devel.cj.bean.ExamInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface ExamInfoMapper {

    List<ExamInfo> selectExamInfoList();

    List<ExamInfo> findAll(@Param("start") Integer start, @Param("rows") Integer rows);

    Long findTotals();

    void save(ExamInfo examInfo);

    void delete(String examId);

    ExamInfo findOne(String exanIn);

    void update(ExamInfo examInfo);
}
