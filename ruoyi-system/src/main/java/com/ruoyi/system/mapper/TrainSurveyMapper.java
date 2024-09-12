package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TrainSurvey;

/**
 * 问卷调查Mapper接口
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
public interface TrainSurveyMapper 
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
     * 删除问卷调查
     * 
     * @param id 问卷调查主键
     * @return 结果
     */
    public int deleteTrainSurveyById(Long id);

    /**
     * 批量删除问卷调查
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTrainSurveyByIds(Long[] ids);
}
