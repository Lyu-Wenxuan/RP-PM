package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 问卷调查对象 train_survey
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
public class TrainSurvey extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 问卷ID */
    private Long id;

    /** 学员姓名 */
    @Excel(name = "学员姓名")
    private String studentName;

    /** 课程名 */
    @Excel(name = "课程名")
    private String courseName;

    /** 满意度 */
    @Excel(name = "满意度")
    private Long rating;

    /** 评价 */
    @Excel(name = "评价")
    private String comment;

    /** 建议 */
    @Excel(name = "建议")
    private String advice;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setStudentName(String studentName) 
    {
        this.studentName = studentName;
    }

    public String getStudentName() 
    {
        return studentName;
    }
    public void setCourseName(String courseName) 
    {
        this.courseName = courseName;
    }

    public String getCourseName() 
    {
        return courseName;
    }
    public void setRating(Long rating) 
    {
        this.rating = rating;
    }

    public Long getRating() 
    {
        return rating;
    }
    public void setComment(String comment) 
    {
        this.comment = comment;
    }

    public String getComment() 
    {
        return comment;
    }
    public void setAdvice(String advice) 
    {
        this.advice = advice;
    }

    public String getAdvice() 
    {
        return advice;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("studentName", getStudentName())
            .append("courseName", getCourseName())
            .append("rating", getRating())
            .append("comment", getComment())
            .append("advice", getAdvice())
            .toString();
    }
}
