<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="学员姓名" prop="studentName">
        <el-input
          v-model="queryParams.studentName"
          placeholder="请输入学员姓名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="付款状态" prop="payStatus">
        <el-select v-model="queryParams.payStatus" placeholder="请选择付款状态" clearable>
          <el-option
            v-for="dict in dict.type.pay_status"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="签到状态" prop="signStatus">
        <el-select v-model="queryParams.signStatus" placeholder="请选择签到状态" clearable>
          <el-option
            v-for="dict in dict.type.sign_status"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-plus"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:payment:edit']"
        >缴费</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          v-if="$store.getters.roles[0] === 'common'"
          type="danger"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
        >签到</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="paymentList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="账单ID" align="center" prop="id" />
      <el-table-column label="学员ID" align="center" prop="studentId" />
      <el-table-column label="学员姓名" align="center" prop="studentName" />
      <el-table-column label="课程名" align="center" prop="courseName" />
      <el-table-column label="课程费用" align="center" prop="coursePrice" />
      <el-table-column label="付款人" align="center" prop="payName" />
      <el-table-column label="付款账户" align="center" prop="payAcount" />
      <el-table-column label="付款状态" align="center" prop="payStatus">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.pay_status" :value="scope.row.payStatus"/>
        </template>
      </el-table-column>
      <el-table-column label="签到状态" align="center" prop="signStatus">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sign_status" :value="scope.row.signStatus"/>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-plus"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:payment:edit']"
          >缴费</el-button>
          <el-button
            v-if="$store.getters.roles[0] === 'common'"
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleDelete(scope.row)"
          >签到</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改缴费签到对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="学员ID" prop="studentId">
          <el-input :disabled="true" v-model="form.studentId" placeholder="请输入学员ID" />
        </el-form-item>
        <el-form-item label="学员姓名" prop="studentName">
          <el-input :disabled="true" v-model="form.studentName" placeholder="请输入学员姓名" />
        </el-form-item>
        <el-form-item label="课程名" prop="courseName">
          <el-input :disabled="true" v-model="form.courseName" placeholder="请输入课程名" />
        </el-form-item>
        <el-form-item label="课程费用" prop="coursePrice">
          <el-input :disabled="true" v-model="form.coursePrice" placeholder="请输入课程费用" />
        </el-form-item>
        <el-form-item label="付款人" prop="payName">
          <el-input v-model="form.payName" placeholder="请输入付款人" />
        </el-form-item>
        <el-form-item label="付款账户" prop="payAcount">
          <el-input v-model="form.payAcount" placeholder="请输入付款账户" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listPayment, getPayment, delPayment, addPayment, updatePayment } from "@/api/system/payment";

export default {
  name: "Payment",
  dicts: ['pay_status', 'sign_status'],
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 缴费签到表格数据
      paymentList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        studentName: null,
        courseName: null,
        payStatus: null,
        signStatus: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        payName: [
          { required: true, message: "付款人不能为空", trigger: "blur" }
        ],
        payAcount: [
          { required: true, message: "付款账户不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询缴费签到列表 */
    getList() {
      this.loading = true;
      listPayment(this.queryParams).then(response => {
        this.paymentList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        studentId: null,
        studentName: null,
        courseName: null,
        coursePrice: null,
        payName: null,
        payAcount: null,
        payStatus: null,
        signStatus: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加缴费签到";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getPayment(id).then(response => {
        this.form = response.data;
        if (this.form.payStatus === 1){
          this.$modal.msgWarning("请勿重复缴费！");
          return
        }
        this.open = true;
        this.title = "修改缴费签到";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updatePayment(this.form).then(response => {
              this.$modal.msgSuccess("缴费成功");
              this.open = false;
              this.getList();
            });
          } else {
            addPayment(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      this.reset();
      const id = row.id || this.ids
      getPayment(id).then(response => {
        this.form = response.data;
        if (this.form.signStatus === 1){
          this.$modal.msgWarning("请勿重复签到！");
          return
        }
        this.form.signStatus = 1;
        updatePayment(this.form).then(response => {
          this.$modal.msgSuccess("签到成功");
          this.open = false;
          this.getList();
        });
      });
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/payment/export', {
        ...this.queryParams
      }, `payment_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
