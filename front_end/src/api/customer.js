import request from '@/utils/request'

export function getCustomers(token) {
  return request({
    url: 'customers',
    method: 'get',
    params: { token }
  })
}

export function createCustomer(data) {
  return request({
    url: 'customers',
    method: 'post',
    data
  })
}

export function editCustomer(data) {
  return request({
    url: `customers/${data.id}`,
    method: 'put',
    data
  })
}

export function deleteCustomer(data) {
  return request({
    url: `customers/${data.id}`,
    method: 'delete'
  })
}

