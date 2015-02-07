require "coffee-script/register"
fs = require("fs")
Handlebars = require("handlebars");

console.log 'precise-theme-simple'

renderProfile= (profile) ->
  console.log 'renderProfile'
  console.log 'profile=' + profile
  css = fs.readFileSync(__dirname + "/style.css", "utf-8")
  template = fs.readFileSync(__dirname + "/profile.template", "utf-8")
  Handlebars.compile(template)
    css: css,
    profile: profile

module.exports =
  renderProfile: renderProfile

