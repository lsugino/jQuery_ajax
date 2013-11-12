$(document).ready(function() {

	$('a#get_color').on('click', function(e) {
    e.preventDefault()
    $.ajax({
      type: "get",
      url: "/color",
      success: function(cellInfo) {
        $('#color_me li:nth-child(' + cellInfo.cell + ')').css("background-color", cellInfo.color)
      } 
    })
  })

})
