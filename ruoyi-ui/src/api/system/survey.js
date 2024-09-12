import request from '@/utils/request'

// 查询问卷调查列表
export function listSurvey(query) {
  return request({
    url: '/system/survey/list',
    method: 'get',
    params: query
  })
}

// 查询问卷调查详细
export function getSurvey(id) {
  return request({
    url: '/system/survey/' + id,
    method: 'get'
  })
}

// 新增问卷调查
export function addSurvey(data) {
  return request({
    url: '/system/survey',
    method: 'post',
    data: data
  })
}

// 修改问卷调查
export function updateSurvey(data) {
  return request({
    url: '/system/survey',
    method: 'put',
    data: data
  })
}

// 删除问卷调查
export function delSurvey(id) {
  return request({
    url: '/system/survey/' + id,
    method: 'delete'
  })
}
