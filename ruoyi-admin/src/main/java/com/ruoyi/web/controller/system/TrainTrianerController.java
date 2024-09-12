package com.ruoyi.web.controller.system;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.TrainTrianer;
import com.ruoyi.system.service.ITrainTrianerService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 讲师管理Controller
 *
 * @author ruoyi
 * @date 2023-11-22
 */
@RestController
@RequestMapping("/system/trianer")
public class TrainTrianerController extends BaseController
{
    @Autowired
    private ITrainTrianerService trainTrianerService;

    /**
     * 查询讲师管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:trianer:list')")
    @GetMapping("/list")
    public TableDataInfo list(TrainTrianer trainTrianer)
    {
        startPage();
        List<TrainTrianer> list = trainTrianerService.selectTrainTrianerList(trainTrianer);
        return getDataTable(list);
    }

    /**
     * 导出讲师管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:trianer:export')")
    @Log(title = "讲师管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TrainTrianer trainTrianer)
    {
        List<TrainTrianer> list = trainTrianerService.selectTrainTrianerList(trainTrianer);
        ExcelUtil<TrainTrianer> util = new ExcelUtil<TrainTrianer>(TrainTrianer.class);
        util.exportExcel(response, list, "讲师管理数据");
    }

    /**
     * 获取讲师管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:trianer:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(trainTrianerService.selectTrainTrianerById(id));
    }

    /**
     * 新增讲师管理
     */
    @PreAuthorize("@ss.hasPermi('system:trianer:add')")
    @Log(title = "讲师管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TrainTrianer trainTrianer)
    {
        return toAjax(trainTrianerService.insertTrainTrianer(trainTrianer));
    }

    /**
     * 修改讲师管理
     */
    @PreAuthorize("@ss.hasPermi('system:trianer:edit')")
    @Log(title = "讲师管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TrainTrianer trainTrianer)
    {
        return toAjax(trainTrianerService.updateTrainTrianer(trainTrianer));
    }

    /**
     * 删除讲师管理
     */
    @PreAuthorize("@ss.hasPermi('system:trianer:remove')")
    @Log(title = "讲师管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(trainTrianerService.deleteTrainTrianerByIds(ids));
    }

    @GetMapping("/getTrainers")
    public List<TrainTrianer> getTrainers(){
        return trainTrianerService.selectTrainTrianerList(new TrainTrianer());
    }
}
