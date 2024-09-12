package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TrainSurvey;

/**
 * 问卷调查Service接口
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
public interface ITrainSurveyService 
{
    /**
     * 查询问卷调查
     * 
     * @param id 问卷调查主键
     * @return 问卷调查
     */
    public TrainSurvey selectTrainSurveyById(Long id);

    /**
     * 查询问卷调查列表
     * 
     * @param trainSurvey 问卷调查
     * @return 问卷调查集合
     */
    public List<TrainSurvey> selectTrainSurveyList(TrainSurvey trainSurvey);

    /**
     * 新增问卷调查
     * 
     * @param trainSurvey 问卷调查
     * @return 结果
     */
    public int insertTrainSurvey(TrainSurvey trainSurvey);

    /**
     * 修改问卷调查
     * 
     * @param trainSurvey 问卷调查
     * @return 结果
     */
    public int updateTrainSurvey(TrainSurvey trainSurvey);

    /**
     * 批量删除问卷调查
     * 
     * @param ids 需要删除的问卷调查主键集合
     * @return 结果
     */
    public int deleteTrainSurveyByIds(Long[] ids);

    /**
     * 删除问卷调查信息
     * 
     * @param id 问卷调查主键
     * @return 结果
     */
    public int deleteTrainSurveyById(Long id);
}
