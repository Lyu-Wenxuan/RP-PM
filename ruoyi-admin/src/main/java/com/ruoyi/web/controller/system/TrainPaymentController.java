package com.ruoyi.web.controller.system;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.system.domain.TrainIncome;
import com.ruoyi.system.service.ISysRoleService;
import com.ruoyi.system.service.ITrainIncomeService;
import com.ruoyi.system.service.ITrainTrianerService;
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
import com.ruoyi.system.domain.TrainPayment;
import com.ruoyi.system.service.ITrainPaymentService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 缴费签到Controller
 *
 * @author ruoyi
 * @date 2023-11-22
 */
@RestController
@RequestMapping("/system/payment")
public class TrainPaymentController extends BaseController
{
    @Autowired
    private ITrainPaymentService trainPaymentService;

    @Autowired
    private ISysRoleService roleService;

    @Autowired
    private ITrainIncomeService trainIncomeService;

    /**
     * 查询缴费签到列表
     */
    @PreAuthorize("@ss.hasPermi('system:payment:list')")
    @GetMapping("/list")
    public TableDataInfo list(TrainPayment trainPayment)
    {
        if (roleService.selectRoleListByUserId(getUserId()).get(0) != 2) {
            startPage();
            List<TrainPayment> list = trainPaymentService.selectTrainPaymentList(trainPayment);
            return getDataTable(list);
        }else {
            List<TrainPayment> list = trainPaymentService.selectTrainPaymentList(trainPayment);
            startPage();
            List<TrainPayment> trainPayments = new ArrayList<>();
            for (TrainPayment payment : list) {
                if (Objects.equals(payment.getStudentId(), getUserId())){
                    trainPayments.add(payment);
                }
            }
            return getDataTable(trainPayments);
        }
    }

    /**
     * 导出缴费签到列表
     */
    @PreAuthorize("@ss.hasPermi('system:payment:export')")
    @Log(title = "缴费签到", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TrainPayment trainPayment)
    {
        List<TrainPayment> list = trainPaymentService.selectTrainPaymentList(trainPayment);
        ExcelUtil<TrainPayment> util = new ExcelUtil<TrainPayment>(TrainPayment.class);
        util.exportExcel(response, list, "缴费签到数据");
    }

    /**
     * 获取缴费签到详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:payment:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(trainPaymentService.selectTrainPaymentById(id));
    }

    /**
     * 新增缴费签到
     */
    @PreAuthorize("@ss.hasPermi('system:payment:add')")
    @Log(title = "缴费签到", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TrainPayment trainPayment)
    {
        return toAjax(trainPaymentService.insertTrainPayment(trainPayment));
    }

    /**
     * 修改缴费签到
     */
    @PreAuthorize("@ss.hasPermi('system:payment:edit')")
    @Log(title = "缴费签到", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TrainPayment trainPayment)
    {
        trainPayment.setPayStatus(1L);
        TrainIncome trainIncome = new TrainIncome();
        trainIncome.setCourseName(trainPayment.getCourseName());
        List<TrainIncome> trainIncomes = trainIncomeService.selectTrainIncomeList(trainIncome);
        if (trainIncomes.size() == 0) {
            trainIncome.setPrice(trainPayment.getCoursePrice());
            trainIncome.setNumber(1L);
            trainIncome.setTotalPrice(trainPayment.getCoursePrice());
            trainIncomeService.insertTrainIncome(trainIncome);
        }else {
            TrainIncome updateIncome = trainIncomes.get(0);
            updateIncome.setNumber(updateIncome.getNumber() + 1);
            updateIncome.setTotalPrice(updateIncome.getTotalPrice().add(trainPayment.getCoursePrice()));
            trainIncomeService.updateTrainIncome(updateIncome);
        }
        return toAjax(trainPaymentService.updateTrainPayment(trainPayment));
    }

    /**
     * 删除缴费签到
     */
    @PreAuthorize("@ss.hasPermi('system:payment:remove')")
    @Log(title = "缴费签到", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(trainPaymentService.deleteTrainPaymentByIds(ids));
    }
}
