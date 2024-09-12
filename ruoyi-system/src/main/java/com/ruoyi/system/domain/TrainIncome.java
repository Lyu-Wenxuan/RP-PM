package com.ruoyi.system.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 课程收入对象 train_income
 * 
 * @author ruoyi
 * @date 2023-11-23
 */
public class TrainIncome extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 收入ID */
    private Long id;

    /** 课程名 */
    @Excel(name = "课程名")
    private String courseName;

    /** 选课人数 */
    @Excel(name = "选课人数")
    private Long number;

    /** 价格 */
    @Excel(name = "价格")
    private BigDecimal price;

    /** 总收入 */
    @Excel(name = "总收入")
    private BigDecimal totalPrice;

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
    public void setNumber(Long number) 
    {
        this.number = number;
    }

    public Long getNumber() 
    {
        return number;
    }
    public void setPrice(BigDecimal price) 
    {
        this.price = price;
    }

    public BigDecimal getPrice() 
    {
        return price;
    }
    public void setTotalPrice(BigDecimal totalPrice) 
    {
        this.totalPrice = totalPrice;
    }

    public BigDecimal getTotalPrice() 
    {
        return totalPrice;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("courseName", getCourseName())
            .append("number", getNumber())
            .append("price", getPrice())
            .append("totalPrice", getTotalPrice())
            .toString();
    }
}
