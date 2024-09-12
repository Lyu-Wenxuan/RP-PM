import request from '@/utils/request'

// 查询讲师管理列表
export function listTrianer(query) {
  return request({
    url: '/system/trianer/list',
    method: 'get',
    params: query
  })
}

// 查询讲师管理详细
export function getTrianer(id) {
  return request({
    url: '/system/trianer/' + id,
    method: 'get'
  })
}

export function getTrainers() {
  return request({
    url: '/system/trianer/getTrainers',
    method: 'get'
  })
}

// 新增讲师管理
export function addTrianer(data) {
  return request({
    url: '/system/trianer',
    method: 'post',
    data: data
  })
}

// 修改讲师管理
export function updateTrianer(data) {
  return request({
    url: '/system/trianer',
    method: 'put',
    data: data
  })
}

// 删除讲师管理
export function delTrianer(id) {
  return request({
    url: '/system/trianer/' + id,
    method: 'delete'
  })
}
