/**
 * 메인페이지 js
 */

/**
 * Swiper 1
 */

var swiper = new Swiper(".first", {
	spaceBetween: 30,
	loop: true,
	effect: "fade",
	navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	},
	pagination: {
		el: ".swiper-pagination",
		clickable: true,
	},
});


/**
 * Swiper 2
 */

var swiper = new Swiper(".second", {
	slidesPerView: 6,
	spaceBetween: 10,
	loop: true,
	navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	}
});

/**
 * 더보기 기능
 */

var products = [
	{ id: 0, brand: "나이키", price: 70000, title: "Blossom Dress" },
	{ id: 1, brand: "샤넬", price: 50000, title: "Springfield Shirt" },
	{ id: 2, brand: "루이비통", price: 60000, title: "Black Monastery" },
];

products.forEach((a, i) => {
	var template =
		`<a href=""> <div class="col-sm-4">
          <img src="https://via.placeholder.com/600" id="box2">
          <div class="info_box">
            <h6 class="brand">${products[i].brand}</h6>
            <h5 class="name">${products[i].title}</h5>
            <p>가격 : ${products[i].price}</p>
          </div>
        </div> </a>`;
	$(".row").append(template);
});


$('#more').click(function() {
	$.get('https://SardineSP.github.io/test_more_info.json')
		.done((data) => {

			data.forEach((a, i) => {
				var template =
					`<a href=""> <div class="col-sm-4">
          <img src="https://via.placeholder.com/600" id="box2">
          <div class="info_box">
            <h6 class="brand">${data[i].brand}</h6>
            <h5 class="name">${data[i].title}</h5>
            <p>가격 : ${data[i].price}</p>
          </div>
        </div> </a>`;
				$(".row").append(template);
			})

		});
});


