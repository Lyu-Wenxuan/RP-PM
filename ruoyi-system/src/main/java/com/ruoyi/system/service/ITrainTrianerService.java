package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TrainTrianer;

/**
 * 讲师管理Service接口
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
public interface ITrainTrianerService 
{
    /**
     * 查询讲师管理
     * 
     * @param id 讲师管理主键
     * @return 讲师管理
     */
    public TrainTrianer selectTrainTrianerById(Long id);

    /**
     * 查询讲师管理列表
     * 
     * @param trainTrianer 讲师管理
     * @return 讲师管理集合
     */
    public List<TrainTrianer> selectTrainTrianerList(TrainTrianer trainTrianer);

    /**
     * 新增讲师管理
     * 
     * @param trainTrianer 讲师管理
     * @return 结果
     */
    public int insertTrainTrianer(TrainTrianer trainTrianer);

    /**
     * 修改讲师管理
     * 
     * @param trainTrianer 讲师管理
     * @return 结果
     */
    public int updateTrainTrianer(TrainTrianer trainTrianer);

    /**
     * 批量删除讲师管理
     * 
     * @param ids 需要删除的讲师管理主键集合
     * @return 结果
     */
    public int deleteTrainTrianerByIds(Long[] ids);

    /**
     * 删除讲师管理信息
     * 
     * @param id 讲师管理主键
     * @return 结果
     */
    public int deleteTrainTrianerById(Long id);
}
