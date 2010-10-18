<!-- Script to display images (wraparound display) - Chris Dymond

myPix = new Array("images/member/desert.jpg", "images/member/jellyfish.jpg", "images/member/koala.jpg", 
"images/member/lighthouse.jpg", "images/member/penguins.jpg", "images/member/tulips.jpg")

thisPic = 0

imgCt = myPix.length-1


function changeSlide(direction)
{

	if (document.images) {

		thisPic = thisPic + direction
	
		if (thisPic > imgCt) {
			thisPic = 0
			}
	
		if (thisPic < 0) {
			thisPic = imgCt
		}
	
		document.myPicture.src=myPix[thisPic]

	}

}

// End of the script -->
