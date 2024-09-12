import request from '@/utils/request'

// 查询课程收入列表
export function listIncome(query) {
  return request({
    url: '/system/income/list',
    method: 'get',
    params: query
  })
}

// 查询课程收入详细
export function getIncome(id) {
  return request({
    url: '/system/income/' + id,
    method: 'get'
  })
}

// 新增课程收入
export function addIncome(data) {
  return request({
    url: '/system/income',
    method: 'post',
    data: data
  })
}

// 修改课程收入
export function updateIncome(data) {
  return request({
    url: '/system/income',
    method: 'put',
    data: data
  })
}

// 删除课程收入
export function delIncome(id) {
  return request({
    url: '/system/income/' + id,
    method: 'delete'
  })
}
