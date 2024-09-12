package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TrainPaymentMapper;
import com.ruoyi.system.domain.TrainPayment;
import com.ruoyi.system.service.ITrainPaymentService;

/**
 * 缴费签到Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
@Service
public class TrainPaymentServiceImpl implements ITrainPaymentService 
{
    @Autowired
    private TrainPaymentMapper trainPaymentMapper;

    /**
     * 查询缴费签到
     * 
     * @param id 缴费签到主键
     * @return 缴费签到
     */
    @Override
    public TrainPayment selectTrainPaymentById(Long id)
    {
        return trainPaymentMapper.selectTrainPaymentById(id);
    }

    /**
     * 查询缴费签到列表
     * 
     * @param trainPayment 缴费签到
     * @return 缴费签到
     */
    @Override
    public List<TrainPayment> selectTrainPaymentList(TrainPayment trainPayment)
    {
        return trainPaymentMapper.selectTrainPaymentList(trainPayment);
    }

    /**
     * 新增缴费签到
     * 
     * @param trainPayment 缴费签到
     * @return 结果
     */
    @Override
    public int insertTrainPayment(TrainPayment trainPayment)
    {
        return trainPaymentMapper.insertTrainPayment(trainPayment);
    }

    /**
     * 修改缴费签到
     * 
     * @param trainPayment 缴费签到
     * @return 结果
     */
    @Override
    public int updateTrainPayment(TrainPayment trainPayment)
    {
        return trainPaymentMapper.updateTrainPayment(trainPayment);
    }

    /**
     * 批量删除缴费签到
     * 
     * @param ids 需要删除的缴费签到主键
     * @return 结果
     */
    @Override
    public int deleteTrainPaymentByIds(Long[] ids)
    {
        return trainPaymentMapper.deleteTrainPaymentByIds(ids);
    }

    /**
     * 删除缴费签到信息
     * 
     * @param id 缴费签到主键
     * @return 结果
     */
    @Override
    public int deleteTrainPaymentById(Long id)
    {
        return trainPaymentMapper.deleteTrainPaymentById(id);
    }
}
