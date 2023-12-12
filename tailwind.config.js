module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    '../todaysart/app/**/*.{html.erb, html, js}',
  ],
  plugins: [
    require("daisyui")
  ],
}
