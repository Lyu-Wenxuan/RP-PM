package com.ruoyi.web.controller.system;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.domain.TrainCourse;
import com.ruoyi.system.domain.TrainPayment;
import com.ruoyi.system.service.ISysRoleService;
import com.ruoyi.system.service.ITrainCourseService;
import com.ruoyi.system.service.ITrainPaymentService;
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
import com.ruoyi.system.domain.TrainApplication;
import com.ruoyi.system.service.ITrainApplicationService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 报名Controller
 *
 * @author ruoyi
 * @date 2023-11-22
 */
@RestController
@RequestMapping("/system/application")
public class TrainApplicationController extends BaseController
{
    @Autowired
    private ITrainApplicationService trainApplicationService;

    @Autowired
    private ITrainPaymentService trainPaymentService;

    @Autowired
    private ITrainCourseService trainCourseService;

    @Autowired
    private ISysRoleService roleService;
    /**
     * 查询报名列表
     */
    @PreAuthorize("@ss.hasPermi('system:application:list')")
    @GetMapping("/list")
    public TableDataInfo list(TrainApplication trainApplication)
    {
        if (roleService.selectRoleListByUserId(getUserId()).get(0) != 2) {
            startPage();
            List<TrainApplication> list = trainApplicationService.selectTrainApplicationList(trainApplication);
            return getDataTable(list);
        }else {
            List<TrainApplication> list = trainApplicationService.selectTrainApplicationList(trainApplication);
            startPage();
            List<TrainApplication> trainApplications = new ArrayList<>();
            for (TrainApplication application : list) {
                if (Objects.equals(application.getStudentId(), getUserId())){
                    trainApplications.add(application);
                }
            }
            return getDataTable(trainApplications);
        }
    }

    /**
     * 导出报名列表
     */
    @PreAuthorize("@ss.hasPermi('system:application:export')")
    @Log(title = "报名", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TrainApplication trainApplication)
    {
        List<TrainApplication> list = trainApplicationService.selectTrainApplicationList(trainApplication);
        ExcelUtil<TrainApplication> util = new ExcelUtil<TrainApplication>(TrainApplication.class);
        util.exportExcel(response, list, "报名数据");
    }

    /**
     * 获取报名详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:application:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(trainApplicationService.selectTrainApplicationById(id));
    }

    /**
     * 新增报名
     */
    @PreAuthorize("@ss.hasPermi('system:application:add')")
    @Log(title = "报名", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TrainApplication trainApplication)
    {
        trainApplication.setStudentId(getUserId());
        trainApplication.setUsername(getUsername());
        List<TrainCourse> trainCourses = trainCourseService.selectTrainCourseList(new TrainCourse());
        TrainPayment trainPayment = new TrainPayment();
        trainPayment.setCourseName(trainApplication.getCourse());
        trainPayment.setStudentId(trainApplication.getStudentId());
        for (TrainCourse trainCours : trainCourses) {
            if (trainCours.getCourseName().equals(trainApplication.getCourse())){
                trainPayment.setCoursePrice(trainCours.getCoursePrice());
            }
        }
        trainPayment.setStudentName(getUsername());
        trainPaymentService.insertTrainPayment(trainPayment);
        return toAjax(trainApplicationService.insertTrainApplication(trainApplication));
    }

    /**
     * 修改报名
     */
    @PreAuthorize("@ss.hasPermi('system:application:edit')")
    @Log(title = "报名", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TrainApplication trainApplication)
    {
        return toAjax(trainApplicationService.updateTrainApplication(trainApplication));
    }

    /**
     * 删除报名
     */
    @PreAuthorize("@ss.hasPermi('system:application:remove')")
    @Log(title = "报名", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(trainApplicationService.deleteTrainApplicationByIds(ids));
    }
}
