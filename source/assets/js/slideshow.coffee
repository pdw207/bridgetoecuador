$slideShow = $('.slideshow')
$advanceButton= $('.advance-right')
$backButton= $('.advance-left')
totalSlides = $slideShow.data('slides')

mod = (num, count) -> ( ( num % count ) + count ) % count
changeSlide = (direction) ->
  currentSlide = $slideShow.data('current-slide')
  newSlide = mod((currentSlide + direction), totalSlides)

  $slideShow.addClass('slide-' + newSlide)
  $slideShow.removeClass('slide-' + currentSlide)
  $slideShow.data('current-slide', newSlide)

$advanceButton.click -> changeSlide(1)
$backButton.click -> changeSlide(-1)

