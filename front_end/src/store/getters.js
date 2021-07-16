const getters = {
  sidebar: state => state.app.sidebar,
  language: state => state.app.language,
  size: state => state.app.size,
  device: state => state.app.device,
  visitedViews: state => state.tagsView.visitedViews,
  cachedViews: state => state.tagsView.cachedViews,
  token: state => state.user.token,
  uid: state => state.user.uid,
  name: state => state.user.name,
  avatar: state => state.user.avatar,
  roles: state => state.user.roles,
  userInfo: state => state.user.userInfo,
  permission_routes: state => state.permission.routes,
  errorLogs: state => state.errorLog.logs,
  prefectures: state => state.settings.prefectures,
  genders: state => state.settings.genders
}
export default getters
