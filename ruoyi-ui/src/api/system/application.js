import request from '@/utils/request'

// 查询报名列表
export function listApplication(query) {
  return request({
    url: '/system/application/list',
    method: 'get',
    params: query
  })
}

// 查询报名详细
export function getApplication(id) {
  return request({
    url: '/system/application/' + id,
    method: 'get'
  })
}

// 新增报名
export function addApplication(data) {
  return request({
    url: '/system/application',
    method: 'post',
    data: data
  })
}

// 修改报名
export function updateApplication(data) {
  return request({
    url: '/system/application',
    method: 'put',
    data: data
  })
}

// 删除报名
export function delApplication(id) {
  return request({
    url: '/system/application/' + id,
    method: 'delete'
  })
}
