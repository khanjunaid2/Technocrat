function handleTabClick(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
}

let fileInputElem = document.getElementById('image-file')
fileInputElem.addEventListener('change', function (event) {

    let imgElem = document.createElement('IMG');
    imgElem.src = URL.createObjectURL(event.target.files[0])
    imgElem.style.width = '400px'

    let imageContainer = document.getElementById('uploaded-file')
    imageContainer.appendChild(imgElem)

    let outerContainer = document.getElementsByClassName('image-processing-container')[0]
    outerContainer.style.height = 'inherit'
})