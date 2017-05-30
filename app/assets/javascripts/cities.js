// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
// $(document).on('turbolinks:load', function() {

  // Favoriting
  $('.j-body2').on('click', '.fav-heart', function(event) {
    console.log("you clicked this")
    let cityId = $(this).data("cityid")
    console.log("city is", cityId)
    $(this).removeClass('fav-heart')
    $(this).addClass('faved-heart')

    $.ajax({
      type: "POST",
      url: '/favorites/' + cityId
    })
  })

  // Unfavoriting
  $('.j-body2').on('click', '.faved-heart', function(event) {
    console.log("you clicked this")
    let cityId = $(this).data("cityid")
    console.log("city is", cityId)
    $(this).removeClass('faved-heart')
    $(this).addClass('fav-heart')


    $.ajax({
      type: "DELETE",
      url: '/favorites/destroy/' + cityId
    })
  })

})
