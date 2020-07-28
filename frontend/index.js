let months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
let days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']

let date = new Date();

let year = date.getFullYear()
let month = months[date.getMonth()]
let day = date.getDate()

if ([1, 21, 31].includes(day)) {
    day = `${day}st`
} else if ([2, 22].includes(day)) {
    day = `${day}nd`
} else {
    day = `${day}th`
}

let dateElem = document.getElementById('date')
dateElem.innerHTML = `${month} ${day}, ${year}, <span>${days[date.getDay()]}</span>`