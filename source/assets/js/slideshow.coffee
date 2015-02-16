$slideShow = $('.slideshow')
$advanceButton= $('.advance-right')
$backButton= $('.advance-left')

mod = (num, count) -> ( ( num % count ) + count ) % count
changeSlide = (direction) ->
  totalSlides = $slideShow.data('slides')
  set = $slideShow.data('set')
  currentSlide = $slideShow.data('current-slide')
  newSlide = mod((currentSlide + direction), totalSlides)

  $slideShow.addClass( set + '-slide-' + newSlide)
  $slideShow.removeClass(set + '-slide-' + currentSlide)
  $slideShow.data('current-slide', newSlide)

$advanceButton.click -> changeSlide(1)
$backButton.click -> changeSlide(-1)

