$ ->
	masterInit()

$('.mobile-menu').click ->
  $('.main-nav nav').slideToggle 'slow'
masterInit = ->
	Global.init()

Global =
	init: ->
		console.info 'js initiated!!!'
