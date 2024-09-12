package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TrainApplicationMapper;
import com.ruoyi.system.domain.TrainApplication;
import com.ruoyi.system.service.ITrainApplicationService;

/**
 * 报名Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
@Service
public class TrainApplicationServiceImpl implements ITrainApplicationService 
{
    @Autowired
    private TrainApplicationMapper trainApplicationMapper;

    /**
     * 查询报名
     * 
     * @param id 报名主键
     * @return 报名
     */
    @Override
    public TrainApplication selectTrainApplicationById(Long id)
    {
        return trainApplicationMapper.selectTrainApplicationById(id);
    }

    /**
     * 查询报名列表
     * 
     * @param trainApplication 报名
     * @return 报名
     */
    @Override
    public List<TrainApplication> selectTrainApplicationList(TrainApplication trainApplication)
    {
        return trainApplicationMapper.selectTrainApplicationList(trainApplication);
    }

    /**
     * 新增报名
     * 
     * @param trainApplication 报名
     * @return 结果
     */
    @Override
    public int insertTrainApplication(TrainApplication trainApplication)
    {
        return trainApplicationMapper.insertTrainApplication(trainApplication);
    }

    /**
     * 修改报名
     * 
     * @param trainApplication 报名
     * @return 结果
     */
    @Override
    public int updateTrainApplication(TrainApplication trainApplication)
    {
        return trainApplicationMapper.updateTrainApplication(trainApplication);
    }

    /**
     * 批量删除报名
     * 
     * @param ids 需要删除的报名主键
     * @return 结果
     */
    @Override
    public int deleteTrainApplicationByIds(Long[] ids)
    {
        return trainApplicationMapper.deleteTrainApplicationByIds(ids);
    }

    /**
     * 删除报名信息
     * 
     * @param id 报名主键
     * @return 结果
     */
    @Override
    public int deleteTrainApplicationById(Long id)
    {
        return trainApplicationMapper.deleteTrainApplicationById(id);
    }
}
