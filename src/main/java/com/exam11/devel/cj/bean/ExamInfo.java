package com.exam11.devel.cj.bean;

public class ExamInfo {
    String examId;
    int isUsed;
    int isNow;

    public ExamInfo(String examName, int isUsed, int isNow) {
        this.examId = examName;
        this.isUsed = isUsed;
        this.isNow = isNow;
    }

    public String getExamId() {
        return examId;
    }

    public void setExamId(String examId) {
        this.examId = examId;
    }

    public int getIsUsed() {
        return isUsed;
    }

    public void setIsUsed(int isUsed) {
        this.isUsed = isUsed;
    }

    public int getIsNow() {
        return isNow;
    }

    public void setIsNow(int isNow) {
        this.isNow = isNow;
    }
}
