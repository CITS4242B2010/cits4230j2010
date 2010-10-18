<!-- Script to display random image - Chris Dymond

picSelection = new Array("images/member/desert.jpg", "images/member/jellyfish.jpg", "images/member/koala.jpg", 
"images/member/lighthouse.jpg", "images/member/penguins.jpg", "images/member/tulips.jpg")

imgCurrent = picSelection.length

function randomPic() {

	if (document.images) {
		
		randomNum = Math.floor ((Math.random() * imgCurrent))

		document.randomPicture.src = picSelection[randomNum]

	}


}

// End of the script -->