import request from '@/utils/request'

// 查询缴费签到列表
export function listPayment(query) {
  return request({
    url: '/system/payment/list',
    method: 'get',
    params: query
  })
}

// 查询缴费签到详细
export function getPayment(id) {
  return request({
    url: '/system/payment/' + id,
    method: 'get'
  })
}

// 新增缴费签到
export function addPayment(data) {
  return request({
    url: '/system/payment',
    method: 'post',
    data: data
  })
}

// 修改缴费签到
export function updatePayment(data) {
  return request({
    url: '/system/payment',
    method: 'put',
    data: data
  })
}

// 删除缴费签到
export function delPayment(id) {
  return request({
    url: '/system/payment/' + id,
    method: 'delete'
  })
}
