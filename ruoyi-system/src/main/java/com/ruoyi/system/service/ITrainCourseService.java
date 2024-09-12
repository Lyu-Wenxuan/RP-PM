package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TrainCourse;

/**
 * 课程信息Service接口
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
public interface ITrainCourseService 
{
    /**
     * 查询课程信息
     * 
     * @param id 课程信息主键
     * @return 课程信息
     */
    public TrainCourse selectTrainCourseById(Long id);

    /**
     * 查询课程信息列表
     * 
     * @param trainCourse 课程信息
     * @return 课程信息集合
     */
    public List<TrainCourse> selectTrainCourseList(TrainCourse trainCourse);

    /**
     * 新增课程信息
     * 
     * @param trainCourse 课程信息
     * @return 结果
     */
    public int insertTrainCourse(TrainCourse trainCourse);

    /**
     * 修改课程信息
     * 
     * @param trainCourse 课程信息
     * @return 结果
     */
    public int updateTrainCourse(TrainCourse trainCourse);

    /**
     * 批量删除课程信息
     * 
     * @param ids 需要删除的课程信息主键集合
     * @return 结果
     */
    public int deleteTrainCourseByIds(Long[] ids);

    /**
     * 删除课程信息信息
     * 
     * @param id 课程信息主键
     * @return 结果
     */
    public int deleteTrainCourseById(Long id);
}
