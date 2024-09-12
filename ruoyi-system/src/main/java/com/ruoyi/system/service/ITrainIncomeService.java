package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TrainIncome;

/**
 * 课程收入Service接口
 * 
 * @author ruoyi
 * @date 2023-11-23
 */
public interface ITrainIncomeService 
{
    /**
     * 查询课程收入
     * 
     * @param id 课程收入主键
     * @return 课程收入
     */
    public TrainIncome selectTrainIncomeById(Long id);

    /**
     * 查询课程收入列表
     * 
     * @param trainIncome 课程收入
     * @return 课程收入集合
     */
    public List<TrainIncome> selectTrainIncomeList(TrainIncome trainIncome);

    /**
     * 新增课程收入
     * 
     * @param trainIncome 课程收入
     * @return 结果
     */
    public int insertTrainIncome(TrainIncome trainIncome);

    /**
     * 修改课程收入
     * 
     * @param trainIncome 课程收入
     * @return 结果
     */
    public int updateTrainIncome(TrainIncome trainIncome);

    /**
     * 批量删除课程收入
     * 
     * @param ids 需要删除的课程收入主键集合
     * @return 结果
     */
    public int deleteTrainIncomeByIds(Long[] ids);

    /**
     * 删除课程收入信息
     * 
     * @param id 课程收入主键
     * @return 结果
     */
    public int deleteTrainIncomeById(Long id);
}
