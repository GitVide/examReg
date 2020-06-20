package com.exam11.devel.cj.bean;

public class ExamInfo {
    String examName;
    int isUsed;
    int isNow;

    public ExamInfo(String examName, int isUsed, int isNow) {
        this.examName = examName;
        this.isUsed = isUsed;
        this.isNow = isNow;
    }

    public String getExamName() {
        return examName;
    }

    public void setExamName(String examName) {
        this.examName = examName;
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
