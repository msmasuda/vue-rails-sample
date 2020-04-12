import request from '@/utils/request'

export function login(data) {
  return request({
    url: '/auth/sign_in',
    method: 'post',
    data
  })
}

export function getInfo(token) {
  return request({
    url: '/auth/user/info',
    method: 'get',
    params: { token }
  })
}

export function logout() {
  return request({
    url: '/auth/sign_out',
    method: 'DELETE'
  })
}
