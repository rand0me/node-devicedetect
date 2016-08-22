tablets = /(ipad|tablet|(android(?!.*mobile))|(windows(?!.*phone)(.*touch))|kindle|playbook|silk|(puffin(?!.*(IP|AP|WP))))/
phones  = /(mobi|ipod|phone|blackberry|opera mini|fennec|minimo|symbian|psp|nintendo ds|archos|skyfire|puffin|blazer|bolt|gobrowser|iris|maemo|semc|teashark|uzard)/

module.exports = () =>
  nav = global.navigator.userAgent.toLowerCase()
  if      nav.match phones  then return 'phone'
  else if nav.match tablets then return 'tablet'
  else return 'pc'