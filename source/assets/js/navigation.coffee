# # mobile navigation toggle
# $('.mobile-menu:visible + nav').hide()
# $('.mobile-menu').click ->
#   $('.main-header nav').slideToggle 'slow'

# #sticky header
# $header = $('header.main-header')
# headerHeight = 152

# $(window).on 'scroll', (e) ->
#   if $(@).scrollTop() >= headerHeight
#     $header.removeClass('static-header').addClass('fix-header')
#   else
#     $header.removeClass('fix-header').addClass('static-header')


menuToggle = $("#js-centered-navigation-mobile-menu").unbind()
$("#js-centered-navigation-menu").removeClass "show"
menuToggle.on "click", (e) ->
  e.preventDefault()
  $("#js-centered-navigation-menu").slideToggle ->
    $("#js-centered-navigation-menu").removeAttr "style"  if $("#js-centered-navigation-menu").is(":hidden")

