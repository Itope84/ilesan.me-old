module.exports = {
  root: true,
  env: {
    browser: true,
    "es6": true,
    node: true
  },
  parserOptions: {
    parser: 'babel-eslint'
  },
  extends: [
    '@nuxtjs',
    "airbnb-base",
    "plugin:vue/recommended",
    'plugin:nuxt/recommended'
  ],
  plugins: [
    // 'prettier'
  ],
  // add your custom rules here
  rules: {
  }
}
