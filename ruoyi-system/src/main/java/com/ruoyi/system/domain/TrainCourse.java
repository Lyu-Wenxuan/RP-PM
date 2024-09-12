package com.ruoyi.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 课程信息对象 train_course
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
public class TrainCourse extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 课程ID */
    private Long id;

    /** 课程名 */
    @Excel(name = "课程名")
    private String courseName;

    /** 讲师 */
    @Excel(name = "讲师")
    private String trainer;

    /** 开始日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "开始日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startDate;

    /** 结束日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "结束日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endDate;

    /** 课程费用 */
    @Excel(name = "课程费用")
    private BigDecimal coursePrice;

    /** 课程状态 */
    @Excel(name = "课程状态")
    private Long isDel;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setCourseName(String courseName) 
    {
        this.courseName = courseName;
    }

    public String getCourseName() 
    {
        return courseName;
    }
    public void setTrainer(String trainer) 
    {
        this.trainer = trainer;
    }

    public String getTrainer() 
    {
        return trainer;
    }
    public void setStartDate(Date startDate) 
    {
        this.startDate = startDate;
    }

    public Date getStartDate() 
    {
        return startDate;
    }
    public void setEndDate(Date endDate) 
    {
        this.endDate = endDate;
    }

    public Date getEndDate() 
    {
        return endDate;
    }
    public void setCoursePrice(BigDecimal coursePrice) 
    {
        this.coursePrice = coursePrice;
    }

    public BigDecimal getCoursePrice() 
    {
        return coursePrice;
    }
    public void setIsDel(Long isDel) 
    {
        this.isDel = isDel;
    }

    public Long getIsDel() 
    {
        return isDel;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("courseName", getCourseName())
            .append("trainer", getTrainer())
            .append("startDate", getStartDate())
            .append("endDate", getEndDate())
            .append("coursePrice", getCoursePrice())
            .append("isDel", getIsDel())
            .toString();
    }
}
