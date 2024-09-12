package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 报名对象 train_application
 *
 * @author ruoyi
 * @date 2023-11-22
 */
public class TrainApplication extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 报名类型 */
    @Excel(name = "报名类型")
    private Long type;

    /** 学员编号 */
    @Excel(name = "学员编号")
    private Long studentId;

    /** 学员姓名 */
    @Excel(name = "学员姓名")
    private String username;

    /** 报名课程 */
    @Excel(name = "报名课程")
    private String course;

    /** 公司 */
    @Excel(name = "公司")
    private String company;

    /** 工作岗位 */
    @Excel(name = "工作岗位")
    private String position;

    /** 技术水平 */
    @Excel(name = "技术水平")
    private String skill;

    /** 报名时间 */
    @JsonFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    @Excel(name = "报名时间", width = 30, dateFormat = "yyyy-MM-dd hh:mm:ss")
    private Date appTime;

    /** 审核状态 */
    @Excel(name = "审核状态")
    private Long status;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setType(Long type)
    {
        this.type = type;
    }

    public Long getType()
    {
        return type;
    }
    public void setStudentId(Long studentId)
    {
        this.studentId = studentId;
    }

    public Long getStudentId()
    {
        return studentId;
    }
    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getUsername()
    {
        return username;
    }
    public void setCourse(String course)
    {
        this.course = course;
    }

    public String getCourse()
    {
        return course;
    }
    public void setCompany(String company)
    {
        this.company = company;
    }

    public String getCompany()
    {
        return company;
    }
    public void setPosition(String position)
    {
        this.position = position;
    }

    public String getPosition()
    {
        return position;
    }
    public void setSkill(String skill)
    {
        this.skill = skill;
    }

    public String getSkill()
    {
        return skill;
    }
    public void setAppTime(Date appTime)
    {
        this.appTime = appTime;
    }

    public Date getAppTime()
    {
        return appTime;
    }
    public void setStatus(Long status)
    {
        this.status = status;
    }

    public Long getStatus()
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("type", getType())
            .append("studentId", getStudentId())
            .append("username", getUsername())
            .append("course", getCourse())
            .append("company", getCompany())
            .append("position", getPosition())
            .append("skill", getSkill())
            .append("appTime", getAppTime())
            .append("status", getStatus())
            .toString();
    }
}
