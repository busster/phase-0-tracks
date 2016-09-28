$(document).ready(function(){
    $('.item').hover(function() {
        $(this).addClass('transition');
    },
    function() {
        $(this).removeClass('transition');
    });
  });



$(document).ready(function(){
    $('.gears').hover(function() {
        $("#big").addClass('rotate-big');
        $("#small").addClass('rotate-small');
    },
    function() {
        $("#big").removeClass('rotate-big');
        $("#small").removeClass('rotate-small');
    });
  });



// AUTO SLIDER JS 

// $(document).ready(function(){
// 	var width =720;
// 	var animationSpeed = 1000;
// 	var pause = 3000;
// 	var currentImage = 0;

// 	var $imageSlider = $('#imageSlider');
// 	var $imageContainer = $imageSlider.find('.images');
// 	var $images = $imageContainer.find('.image');
// 	var $imagesAmt = $images.length

// 	var interval;

// 	function startSlider() {
// 		interval = setInterval(function() {
// 			$imageContainer.animate({'margin-left': '-='+width}, animationSpeed, function(){
// 				currentImage++;
// 				if (currentImage === $imagesAmt) {
// 					currentImage = 0;
// 					$imageContainer.css('margin-left',0);
// 				}
// 			});
// 		}, pause);
// 	}

// startSlider();
// });




// CLICK SLIDER WITH SETABLE HEIGHT AND WIDTH

$(document).ready(function(){
	var width = 1000;
	var height = 500;
	var animationSpeed = 1000;
	var pause = 3000;
	var currentImage = 0;

	var $imageSlider = $('#imageSlider');
	var $imageContainer = $imageSlider.find('.images');
	var $images = $imageContainer.find('.image');
	var $imagesAmt = $images.length

	$('#imageSlider').css('width', width + 'px');
	$('#imageSlider').css('height', height + 'px');
	$('.images').css('width', width * $imagesAmt + 'px');
	$('.image').css('width', width + 'px');
	$('.box').css({'width': width + 10 + 'px', 'height': height + 20 + 'px'});


	function slideImage() {
			$imageContainer.animate({'margin-left': (-1 * (currentImage)) * width}, animationSpeed);
	};

	$('#next').click(function(){
		currentImage += 1;
		if (currentImage > $imagesAmt - 1) {
			currentImage = 0
		}
		slideImage();
	});

	$('#prev').click(function(){
		currentImage -= 1;
		if (currentImage < 0 ) {
			currentImage = $imagesAmt - 1;
		}
		slideImage();
	});
});