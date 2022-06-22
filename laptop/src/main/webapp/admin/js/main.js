/*price range*/

 $('#sl2').slider();

	var RGBChange = function() {
	  $('#RGB').css('background', 'rgb('+r.getValue()+','+g.getValue()+','+b.getValue()+')')
	};	
		
/*scroll to top*/

$(document).ready(function(){

	$(".btn-cart-clear").click(function () {
		$.ajax({
			url:"/cart/clear/",

			success:function (response) {
                $("#cart-c").html(response[0]);
                $("#cart-a").html(response[0]);
			    $("table>tbody").html(" ");
                $("[data-dismiss]").click();

			}
		})
	})
	$("a[data-lang]").click(function() {
		var lang = $(this).attr("data-lang");
		$.ajax({
			url:"/home/language?lang="+lang,
			success:function() {
				location.reload();
			}
		});
		return false;
	})

    $(".btn-cart-remove").click(function () {
        var id=$(this).closest("tr").attr("data-id")
        $.ajax({
            url:"/cart/remove/"+id,

            success:function (response) {

                $("#cart-c").html(response[0]);
                $("#cart-a").html(response[1]);

            }
        })
        $(this).closest("tr").remove();
    })


    $("tr[data-id] input").on("input",function () {
        var id = $(this).closest("tr").attr("data-id");

        var price = $(this).closest("tr").attr("data-price");

        var discount = $(this).closest("tr").attr("data-discount");
        var qty=$(this).val();

        $.ajax({
            url: "/cart/update/"+id+"/"+qty,
            success: function (response) {
                $("#cart-ac").html(response[0]);
                $("#cart-am").html(response[1]);
            }
        });
        var sum=qty*price*(1-discount);
        $(this).closest("tr").find("td.sum").html(sum);
    })


	$(".btn-star").click(function () {
		var id= $(this).closest("div").attr("data-id");
		$.ajax({
			url:"/product/add-favo/"+id,
			success:function (response) {
				if (response){
					alert("đã thêm vào thành công")}
				else{ alert("đã tồn tại")}
			}
		})
	})
	$(function () {
		$.scrollUp({
	        scrollName: 'scrollUp', // Element ID
	        scrollDistance: 300, // Distance from top/bottom before showing element (px)
	        scrollFrom: 'top', // 'top' or 'bottom'
	        scrollSpeed: 300, // Speed back to top (ms)
	        easingType: 'linear', // Scroll to top easing (see http://easings.net/)
	        animation: 'fade', // Fade, slide, none
	        animationSpeed: 200, // Animation in speed (ms)
	        scrollTrigger: false, // Set a custom triggering element. Can be an HTML string or jQuery object
					//scrollTarget: false, // Set a custom target element for scrolling to the top
	        scrollText: '<i class="fa fa-angle-up"></i>', // Text for element, can contain HTML
	        scrollTitle: false, // Set a custom <a> title if required.
	        scrollImg: false, // Set true to use image
	        activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
	        zIndex: 2147483647 // Z-Index for the overlay
		});
	});
	// When the user scrolls the page, execute myFunction
	window.onscroll = function() {myFunction()};

// Get the header
	var header = document.getElementById("myHeader");

// Get the offset position of the navbar
	var sticky = header.offsetTop;

// Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
	function myFunction() {
		if (window.pageYOffset > sticky) {
			header.classList.add("sticky");
		} else {
			header.classList.remove("sticky");
		}
	}
	$(".btn-open").click(function () {
		var id=$(this).closest("div").attr("data-id");
		$("#myModal #id").val(id);
	})
	$(".btn-send").click(function () {
		var form= {
			id : $("#myModal #id").val(),
		 to :$("#myModal #email").val(),
		 body: $("#myModal #conment").val(),
			from: $("#myModal #sender").val()
	}
		$.ajax({
			url:"/product/send/",
			data:form,
			success:function (response) {
				if (response){
					$("[data-dismiss]").click();
					alert("đã gửi thành công")}
				else{ alert("lỗi gửi mail")}
			}
		})

	})
	$(".btn-add-cart").click(function () {
		var id=$(this).closest("div").attr("data-id");
		$.ajax({
			url:"/cart/add/"+id,

			success:function (response) {
				if (response)
				    $("#cart-c").html(response[0]);
                $("#cart-a").html(response[1]);

			alert("thêm thành công")}
		});


	})
});
