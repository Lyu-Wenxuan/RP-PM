package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 讲师管理对象 train_trianer
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
public class TrainTrianer extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 讲师ID */
    private Long id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String fullName;

    /** 职称 */
    @Excel(name = "职称")
    private String title;

    /** 擅长领域 */
    @Excel(name = "擅长领域")
    private String expertise;

    /** 邮箱 */
    @Excel(name = "邮箱")
    private String email;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phone;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setFullName(String fullName) 
    {
        this.fullName = fullName;
    }

    public String getFullName() 
    {
        return fullName;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setExpertise(String expertise) 
    {
        this.expertise = expertise;
    }

    public String getExpertise() 
    {
        return expertise;
    }
    public void setEmail(String email) 
    {
        this.email = email;
    }

    public String getEmail() 
    {
        return email;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("fullName", getFullName())
            .append("title", getTitle())
            .append("expertise", getExpertise())
            .append("email", getEmail())
            .append("phone", getPhone())
            .toString();
    }
}
