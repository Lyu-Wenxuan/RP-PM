package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TrainSurveyMapper;
import com.ruoyi.system.domain.TrainSurvey;
import com.ruoyi.system.service.ITrainSurveyService;

/**
 * 问卷调查Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
@Service
public class TrainSurveyServiceImpl implements ITrainSurveyService 
{
    @Autowired
    private TrainSurveyMapper trainSurveyMapper;

    /**
     * 查询问卷调查
     * 
     * @param id 问卷调查主键
     * @return 问卷调查
     */
    @Override
    public TrainSurvey selectTrainSurveyById(Long id)
    {
        return trainSurveyMapper.selectTrainSurveyById(id);
    }

    /**
     * 查询问卷调查列表
     * 
     * @param trainSurvey 问卷调查
     * @return 问卷调查
     */
    @Override
    public List<TrainSurvey> selectTrainSurveyList(TrainSurvey trainSurvey)
    {
        return trainSurveyMapper.selectTrainSurveyList(trainSurvey);
    }

    /**
     * 新增问卷调查
     * 
     * @param trainSurvey 问卷调查
     * @return 结果
     */
    @Override
    public int insertTrainSurvey(TrainSurvey trainSurvey)
    {
        return trainSurveyMapper.insertTrainSurvey(trainSurvey);
    }

    /**
     * 修改问卷调查
     * 
     * @param trainSurvey 问卷调查
     * @return 结果
     */
    @Override
    public int updateTrainSurvey(TrainSurvey trainSurvey)
    {
        return trainSurveyMapper.updateTrainSurvey(trainSurvey);
    }

    /**
     * 批量删除问卷调查
     * 
     * @param ids 需要删除的问卷调查主键
     * @return 结果
     */
    @Override
    public int deleteTrainSurveyByIds(Long[] ids)
    {
        return trainSurveyMapper.deleteTrainSurveyByIds(ids);
    }

    /**
     * 删除问卷调查信息
     * 
     * @param id 问卷调查主键
     * @return 结果
     */
    @Override
    public int deleteTrainSurveyById(Long id)
    {
        return trainSurveyMapper.deleteTrainSurveyById(id);
    }
}
