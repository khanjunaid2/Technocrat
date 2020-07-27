let items = [{
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$1'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$1'
    }, {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$1'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$1'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$1'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$2'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$2'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$2'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$2'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$2'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$3'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$3'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$3'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$3'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$3'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$4'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$4'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$4'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$4'
    },
    {
        name: 'iPhone X 256GB Silver',
        rating: '4.5/5',
        price: '$4'
    },

]

let currentPage = 0

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

function onSearch() {
    let input = document.getElementById('find-items-search')
    let filteredItems = items.filter(item => item.name === input.value).map(item =>
        `<div class='item-row'>
                <div class='flex'>
                    <input type='checkbox'/><div>${item.name}</div>
                </div> 
                <div>${item.rating}</div>
                <div>${item.price}</div>
            </div>`)
    let results = filteredItems.slice(0, 5)

    let tableHeader = `<div class='item-row items-header'>
    <div class='flex'>
        <input style="opacity:0" type='checkbox'/><div>Name</div>
    </div> 
    <div>Rating</div>
    <div>Price</div>
</div>`

    let itemsContainer = document.getElementById('items-container')
    itemsContainer.innerHTML = tableHeader + results.join('')

    //pagination

    let paginationIndexes = Math.floor(filteredItems.length / 5)
    if (paginationIndexes > 0) {
        let pagesContainer = document.getElementById('pages')
        let pages = ``
        for (let i = 0; i < paginationIndexes; i++) {
            pages += `<a onclick='loadItems(${i})'>${i+1}</a>`
        }
        pagesContainer.innerHTML = pages + `<a style="font-weight: bold" onclick='loadItems(${-1})'>Next</a>`
    }

    let showing = document.getElementById('showing')

    showing.innerHTML = `<div>Showing <span style="font-weight: bold">${5}/${items.length} Products </span> </div>`

}

function loadItems(i) {
    if (i !== -1) {
        currentPage = i
    } else {
        let totalExpectedPages = Math.floor(items.length / 5)
        if (currentPage < totalExpectedPages - 1) {
            currentPage += 1
        }
    }
    let startIndex = 5 * currentPage
    let endIndex = startIndex + 5
    let input = document.getElementById('find-items-search')
    let tableHeader = `<div class='item-row items-header'>
    <div class='flex'>
        <input style="opacity:0" type='checkbox'/><div>Name</div>
    </div> 
    <div>Rating</div>
    <div>Price</div>
</div>`

    let results = items.filter(item => item.name === input.value).map(item =>
        `<div class='item-row'>
                <div class='flex'>
                    <input type='checkbox'/><div>${item.name}</div>
                </div> 
                <div>${item.rating}</div>
                <div>${item.price}</div>
            </div>`).slice(startIndex, endIndex)

    let itemsContainer = document.getElementById('items-container')
    itemsContainer.innerHTML = tableHeader + results.join('')

    let showing = document.getElementById('showing')

    showing.innerHTML = `<div>Showing ${endIndex}/${items.length} Products`
}