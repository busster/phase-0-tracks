// Pair: Andrew Vanbeek

var box = document.getElementById("box")

box.style.height = "50px"


function bigger(event) {
	event.target.style.height = "100px"
}

box.addEventListener("click", bigger)