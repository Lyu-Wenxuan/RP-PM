package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TrainTrianerMapper;
import com.ruoyi.system.domain.TrainTrianer;
import com.ruoyi.system.service.ITrainTrianerService;

/**
 * 讲师管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
@Service
public class TrainTrianerServiceImpl implements ITrainTrianerService 
{
    @Autowired
    private TrainTrianerMapper trainTrianerMapper;

    /**
     * 查询讲师管理
     * 
     * @param id 讲师管理主键
     * @return 讲师管理
     */
    @Override
    public TrainTrianer selectTrainTrianerById(Long id)
    {
        return trainTrianerMapper.selectTrainTrianerById(id);
    }

    /**
     * 查询讲师管理列表
     * 
     * @param trainTrianer 讲师管理
     * @return 讲师管理
     */
    @Override
    public List<TrainTrianer> selectTrainTrianerList(TrainTrianer trainTrianer)
    {
        return trainTrianerMapper.selectTrainTrianerList(trainTrianer);
    }

    /**
     * 新增讲师管理
     * 
     * @param trainTrianer 讲师管理
     * @return 结果
     */
    @Override
    public int insertTrainTrianer(TrainTrianer trainTrianer)
    {
        return trainTrianerMapper.insertTrainTrianer(trainTrianer);
    }

    /**
     * 修改讲师管理
     * 
     * @param trainTrianer 讲师管理
     * @return 结果
     */
    @Override
    public int updateTrainTrianer(TrainTrianer trainTrianer)
    {
        return trainTrianerMapper.updateTrainTrianer(trainTrianer);
    }

    /**
     * 批量删除讲师管理
     * 
     * @param ids 需要删除的讲师管理主键
     * @return 结果
     */
    @Override
    public int deleteTrainTrianerByIds(Long[] ids)
    {
        return trainTrianerMapper.deleteTrainTrianerByIds(ids);
    }

    /**
     * 删除讲师管理信息
     * 
     * @param id 讲师管理主键
     * @return 结果
     */
    @Override
    public int deleteTrainTrianerById(Long id)
    {
        return trainTrianerMapper.deleteTrainTrianerById(id);
    }
}
