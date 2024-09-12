package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TrainCourseMapper;
import com.ruoyi.system.domain.TrainCourse;
import com.ruoyi.system.service.ITrainCourseService;

/**
 * 课程信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
@Service
public class TrainCourseServiceImpl implements ITrainCourseService 
{
    @Autowired
    private TrainCourseMapper trainCourseMapper;

    /**
     * 查询课程信息
     * 
     * @param id 课程信息主键
     * @return 课程信息
     */
    @Override
    public TrainCourse selectTrainCourseById(Long id)
    {
        return trainCourseMapper.selectTrainCourseById(id);
    }

    /**
     * 查询课程信息列表
     * 
     * @param trainCourse 课程信息
     * @return 课程信息
     */
    @Override
    public List<TrainCourse> selectTrainCourseList(TrainCourse trainCourse)
    {
        return trainCourseMapper.selectTrainCourseList(trainCourse);
    }

    /**
     * 新增课程信息
     * 
     * @param trainCourse 课程信息
     * @return 结果
     */
    @Override
    public int insertTrainCourse(TrainCourse trainCourse)
    {
        return trainCourseMapper.insertTrainCourse(trainCourse);
    }

    /**
     * 修改课程信息
     * 
     * @param trainCourse 课程信息
     * @return 结果
     */
    @Override
    public int updateTrainCourse(TrainCourse trainCourse)
    {
        return trainCourseMapper.updateTrainCourse(trainCourse);
    }

    /**
     * 批量删除课程信息
     * 
     * @param ids 需要删除的课程信息主键
     * @return 结果
     */
    @Override
    public int deleteTrainCourseByIds(Long[] ids)
    {
        return trainCourseMapper.deleteTrainCourseByIds(ids);
    }

    /**
     * 删除课程信息信息
     * 
     * @param id 课程信息主键
     * @return 结果
     */
    @Override
    public int deleteTrainCourseById(Long id)
    {
        return trainCourseMapper.deleteTrainCourseById(id);
    }
}
