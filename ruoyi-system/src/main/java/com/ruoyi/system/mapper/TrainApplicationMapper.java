package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TrainApplication;

/**
 * 报名Mapper接口
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
public interface TrainApplicationMapper 
{
    /**
     * 查询报名
     * 
     * @param id 报名主键
     * @return 报名
     */
    public TrainApplication selectTrainApplicationById(Long id);

    /**
     * 查询报名列表
     * 
     * @param trainApplication 报名
     * @return 报名集合
     */
    public List<TrainApplication> selectTrainApplicationList(TrainApplication trainApplication);

    /**
     * 新增报名
     * 
     * @param trainApplication 报名
     * @return 结果
     */
    public int insertTrainApplication(TrainApplication trainApplication);

    /**
     * 修改报名
     * 
     * @param trainApplication 报名
     * @return 结果
     */
    public int updateTrainApplication(TrainApplication trainApplication);

    /**
     * 删除报名
     * 
     * @param id 报名主键
     * @return 结果
     */
    public int deleteTrainApplicationById(Long id);

    /**
     * 批量删除报名
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTrainApplicationByIds(Long[] ids);
}
