module.exports = {
  title: 'Vue Rails Sample',

  /**
   * @type {boolean} true | false
   * @description Whether show the settings right-panel
   */
  showSettings: true,

  /**
   * @type {boolean} true | false
   * @description Whether need tagsView
   */
  tagsView: true,

  /**
   * @type {boolean} true | false
   * @description Whether fix the header
   */
  fixedHeader: false,

  /**
   * @type {boolean} true | false
   * @description Whether show the logo in sidebar
   */
  sidebarLogo: false,

  /**
   * @type {string | array} 'production' | ['production', 'development']
   * @description Need show err logs component.
   * The default is only used in the production env
   * If you want to also use it in dev, you can pass ['production', 'development']
   */
  errorLog: 'production',

  prefectures: [
    { value: 1, text: '北海道' },
    { value: 2, text: '東京都' },
    { value: 3, text: '福岡県' }
  ],

  genders: [
    { value: 1, text: 'gender.male' },
    { value: 2, text: 'gender.female' }
  ]
}
