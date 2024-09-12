package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TrainIncomeMapper;
import com.ruoyi.system.domain.TrainIncome;
import com.ruoyi.system.service.ITrainIncomeService;

/**
 * 课程收入Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-11-23
 */
@Service
public class TrainIncomeServiceImpl implements ITrainIncomeService 
{
    @Autowired
    private TrainIncomeMapper trainIncomeMapper;

    /**
     * 查询课程收入
     * 
     * @param id 课程收入主键
     * @return 课程收入
     */
    @Override
    public TrainIncome selectTrainIncomeById(Long id)
    {
        return trainIncomeMapper.selectTrainIncomeById(id);
    }

    /**
     * 查询课程收入列表
     * 
     * @param trainIncome 课程收入
     * @return 课程收入
     */
    @Override
    public List<TrainIncome> selectTrainIncomeList(TrainIncome trainIncome)
    {
        return trainIncomeMapper.selectTrainIncomeList(trainIncome);
    }

    /**
     * 新增课程收入
     * 
     * @param trainIncome 课程收入
     * @return 结果
     */
    @Override
    public int insertTrainIncome(TrainIncome trainIncome)
    {
        return trainIncomeMapper.insertTrainIncome(trainIncome);
    }

    /**
     * 修改课程收入
     * 
     * @param trainIncome 课程收入
     * @return 结果
     */
    @Override
    public int updateTrainIncome(TrainIncome trainIncome)
    {
        return trainIncomeMapper.updateTrainIncome(trainIncome);
    }

    /**
     * 批量删除课程收入
     * 
     * @param ids 需要删除的课程收入主键
     * @return 结果
     */
    @Override
    public int deleteTrainIncomeByIds(Long[] ids)
    {
        return trainIncomeMapper.deleteTrainIncomeByIds(ids);
    }

    /**
     * 删除课程收入信息
     * 
     * @param id 课程收入主键
     * @return 结果
     */
    @Override
    public int deleteTrainIncomeById(Long id)
    {
        return trainIncomeMapper.deleteTrainIncomeById(id);
    }
}
