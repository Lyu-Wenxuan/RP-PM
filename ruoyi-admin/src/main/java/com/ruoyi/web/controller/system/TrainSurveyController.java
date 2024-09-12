package com.ruoyi.web.controller.system;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.system.service.ISysRoleService;
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
import com.ruoyi.system.domain.TrainSurvey;
import com.ruoyi.system.service.ITrainSurveyService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 问卷调查Controller
 *
 * @author ruoyi
 * @date 2023-11-22
 */
@RestController
@RequestMapping("/system/survey")
public class TrainSurveyController extends BaseController
{
    @Autowired
    private ITrainSurveyService trainSurveyService;

    @Autowired
    private ISysRoleService roleService;

    /**
     * 查询问卷调查列表
     */
    @PreAuthorize("@ss.hasPermi('system:survey:list')")
    @GetMapping("/list")
    public TableDataInfo list(TrainSurvey trainSurvey)
    {
        if (roleService.selectRoleListByUserId(getUserId()).get(0) != 2) {
            startPage();
            List<TrainSurvey> list = trainSurveyService.selectTrainSurveyList(trainSurvey);
            return getDataTable(list);
        }else {
            List<TrainSurvey> list = trainSurveyService.selectTrainSurveyList(trainSurvey);
            startPage();
            List<TrainSurvey> trainSurveys = new ArrayList<>();
            for (TrainSurvey survey : list) {
                if (survey.getStudentName().equals(getUsername())) {
                    trainSurveys.add(survey);
                }
            }
            return getDataTable(trainSurveys);
        }
    }

    /**
     * 导出问卷调查列表
     */
    @PreAuthorize("@ss.hasPermi('system:survey:export')")
    @Log(title = "问卷调查", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TrainSurvey trainSurvey)
    {
        List<TrainSurvey> list = trainSurveyService.selectTrainSurveyList(trainSurvey);
        ExcelUtil<TrainSurvey> util = new ExcelUtil<TrainSurvey>(TrainSurvey.class);
        util.exportExcel(response, list, "问卷调查数据");
    }

    /**
     * 获取问卷调查详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:survey:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(trainSurveyService.selectTrainSurveyById(id));
    }

    /**
     * 新增问卷调查
     */
    @PreAuthorize("@ss.hasPermi('system:survey:add')")
    @Log(title = "问卷调查", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TrainSurvey trainSurvey)
    {
        trainSurvey.setStudentName(getUsername());
        return toAjax(trainSurveyService.insertTrainSurvey(trainSurvey));
    }

    /**
     * 修改问卷调查
     */
    @PreAuthorize("@ss.hasPermi('system:survey:edit')")
    @Log(title = "问卷调查", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TrainSurvey trainSurvey)
    {
        return toAjax(trainSurveyService.updateTrainSurvey(trainSurvey));
    }

    /**
     * 删除问卷调查
     */
    @PreAuthorize("@ss.hasPermi('system:survey:remove')")
    @Log(title = "问卷调查", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(trainSurveyService.deleteTrainSurveyByIds(ids));
    }
}
