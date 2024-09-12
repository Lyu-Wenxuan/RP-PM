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
import com.ruoyi.system.domain.TrainIncome;
import com.ruoyi.system.service.ITrainIncomeService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 课程收入Controller
 *
 * @author ruoyi
 * @date 2023-11-23
 */
@RestController
@RequestMapping("/system/income")
public class TrainIncomeController extends BaseController
{
    @Autowired
    private ITrainIncomeService trainIncomeService;

    /**
     * 查询课程收入列表
     */
    @PreAuthorize("@ss.hasPermi('system:income:list')")
    @GetMapping("/list")
    public TableDataInfo list(TrainIncome trainIncome)
    {
        startPage();
        List<TrainIncome> list = trainIncomeService.selectTrainIncomeList(trainIncome);
        return getDataTable(list);
    }

    /**
     * 导出课程收入列表
     */
    @PreAuthorize("@ss.hasPermi('system:income:export')")
    @Log(title = "课程收入", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TrainIncome trainIncome)
    {
        List<TrainIncome> list = trainIncomeService.selectTrainIncomeList(trainIncome);
        ExcelUtil<TrainIncome> util = new ExcelUtil<TrainIncome>(TrainIncome.class);
        util.exportExcel(response, list, "课程收入数据");
    }

    /**
     * 获取课程收入详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:income:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(trainIncomeService.selectTrainIncomeById(id));
    }

    /**
     * 新增课程收入
     */
    @PreAuthorize("@ss.hasPermi('system:income:add')")
    @Log(title = "课程收入", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TrainIncome trainIncome)
    {
        return toAjax(trainIncomeService.insertTrainIncome(trainIncome));
    }

    /**
     * 修改课程收入
     */
    @PreAuthorize("@ss.hasPermi('system:income:edit')")
    @Log(title = "课程收入", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TrainIncome trainIncome)
    {
        return toAjax(trainIncomeService.updateTrainIncome(trainIncome));
    }

    /**
     * 删除课程收入
     */
    @PreAuthorize("@ss.hasPermi('system:income:remove')")
    @Log(title = "课程收入", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(trainIncomeService.deleteTrainIncomeByIds(ids));
    }
}
