const Fetch = (FetchData = {}) => {
    let baseUrl = ''
    let { method, url, headers, params, data } = FetchData
    method = method.toLowerCase()
    url = baseUrl + url
  
    if (params) url += '?' + new URLSearchParams(params).toString()
  
    let options = {
      method: method || 'get',
      headers: {
        'Accept': 'application/json',
        'Content-type': 'application/json',
        'credentials': 'include'
      },
    //   headers: headers,
      body: JSON.stringify(data)
    }
  
    return new Promise((resolve, reject) => {
      fetch(url, data ? options : {}).then(res => res.json()).then(res => {
        resolve(res)
        if ([0, 200, 201].includes(res.status)) {
          // message.success(res.message || res.msg)
        } else if (res.status === 401) {
          // message.warning('请求要求身份验证')
          // window.location.href = '/login'
        } else {
          // message.error(res.message ? res.message: '请求数据出错')
        }
      }).catch(err => {
        return reject(err)
      })
    })
  }
  
  export default Fetch