package com.ruoyi.system.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 缴费签到对象 train_payment
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
public class TrainPayment extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 账单ID */
    private Long id;

    /** 学员ID */
    @Excel(name = "学员ID")
    private Long studentId;

    /** 学员姓名 */
    @Excel(name = "学员姓名")
    private String studentName;

    /** 课程名 */
    @Excel(name = "课程名")
    private String courseName;

    /** 课程费用 */
    @Excel(name = "课程费用")
    private BigDecimal coursePrice;

    /** 付款人 */
    @Excel(name = "付款人")
    private String payName;

    /** 付款账户 */
    @Excel(name = "付款账户")
    private String payAcount;

    /** 付款状态 */
    @Excel(name = "付款状态")
    private Long payStatus;

    /** 签到状态 */
    @Excel(name = "签到状态")
    private Long signStatus;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setStudentId(Long studentId) 
    {
        this.studentId = studentId;
    }

    public Long getStudentId() 
    {
        return studentId;
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
    public void setCoursePrice(BigDecimal coursePrice) 
    {
        this.coursePrice = coursePrice;
    }

    public BigDecimal getCoursePrice() 
    {
        return coursePrice;
    }
    public void setPayName(String payName) 
    {
        this.payName = payName;
    }

    public String getPayName() 
    {
        return payName;
    }
    public void setPayAcount(String payAcount) 
    {
        this.payAcount = payAcount;
    }

    public String getPayAcount() 
    {
        return payAcount;
    }
    public void setPayStatus(Long payStatus) 
    {
        this.payStatus = payStatus;
    }

    public Long getPayStatus() 
    {
        return payStatus;
    }
    public void setSignStatus(Long signStatus) 
    {
        this.signStatus = signStatus;
    }

    public Long getSignStatus() 
    {
        return signStatus;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("studentId", getStudentId())
            .append("studentName", getStudentName())
            .append("courseName", getCourseName())
            .append("coursePrice", getCoursePrice())
            .append("payName", getPayName())
            .append("payAcount", getPayAcount())
            .append("payStatus", getPayStatus())
            .append("signStatus", getSignStatus())
            .toString();
    }
}
