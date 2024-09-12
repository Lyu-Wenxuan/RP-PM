package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TrainPayment;

/**
 * 缴费签到Mapper接口
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
public interface TrainPaymentMapper 
{
    /**
     * 查询缴费签到
     * 
     * @param id 缴费签到主键
     * @return 缴费签到
     */
    public TrainPayment selectTrainPaymentById(Long id);

    /**
     * 查询缴费签到列表
     * 
     * @param trainPayment 缴费签到
     * @return 缴费签到集合
     */
    public List<TrainPayment> selectTrainPaymentList(TrainPayment trainPayment);

    /**
     * 新增缴费签到
     * 
     * @param trainPayment 缴费签到
     * @return 结果
     */
    public int insertTrainPayment(TrainPayment trainPayment);

    /**
     * 修改缴费签到
     * 
     * @param trainPayment 缴费签到
     * @return 结果
     */
    public int updateTrainPayment(TrainPayment trainPayment);

    /**
     * 删除缴费签到
     * 
     * @param id 缴费签到主键
     * @return 结果
     */
    public int deleteTrainPaymentById(Long id);

    /**
     * 批量删除缴费签到
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTrainPaymentByIds(Long[] ids);
}
