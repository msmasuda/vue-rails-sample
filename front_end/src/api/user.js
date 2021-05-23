import request from '@/utils/request'

export function login(data) {
  return request({
    url: '/auth/sign_in',
    method: 'post',
    data
  })
}

export function getInfo(uid) {
  return request({
    url: '/infos',
    method: 'get',
    params: { uid }
  })
}

export function logout() {
  return request({
    url: '/auth/sign_out',
    method: 'DELETE'
  })
}
