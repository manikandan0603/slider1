$(function() {

		var ivalue = $('#slider').attr("data-slider-value")
		var s1 = $('#slider').attr("data-s1")
		var s2 = $('#slider').attr("data-s2")
		var s3 = $('#slider').attr("data-s3")
		var s4 = $('#slider').attr("data-s4")
		var s5 = $('#slider').attr("data-s5")
		var s6 = $('#slider').attr("data-s6")
		var s7 = $('#slider').attr("data-s7")
		var s8 = $('#slider').attr("data-s8")
		var s9 = $('#slider').attr("data-s9")
		var s10 = $('#slider').attr("data-s10")
	  $( "#slider" ).slider({
	  min: 1,
	  max: 10,
	  value: ivalue
		});
		$("#create-pane").html("");
		  for(i=0;i<ivalue;i++) {
		  	var sub_slider_values = []
		    $("#create-pane").append("<h1>"+i+"</h1>");
		    $("#create-pane").append("<div id='new-slider-"+i+"'></div>");
		    $('#new-slider-'+i).slider({range: true, value: 1
		    	// if (i == "1") {
		    	// 	value: s1; 
		    	// }
		    	// else if (i == "2") {
		    	// 	value: s2;
		    	// }
		    	// else if (i == "3") {
		    	// 	value: s3;
		    	// }
		    	// else if (i == "4") {
		    	// 	value: s4;
		    	// }
		    	// else if (i == "5") {
		    	// 	value: s5;
		    	// }
		    	// else if (i == "6") {
		    	// 	value: s6;
		    	// }
		    	// else if (i == "7") {
		    	// 	value: s7;
		    	// }
		    	// else if (i == "8") {
		    	// 	value: s8;
		    	// }
		    	// else if (i == "9") {
		    	// 	value: s9;
		    	// }
		    	// else if (i == "10") {
		    	// 	value: s10;
		    	// }
		    	// else{
		    	// }
		    	});
		   }

	  $('#slider').on("slidechange", function(event, ui){
		 	main_slider = ui.value
		 	console.log(main_slider);
		  $("#create-pane").html("");
		  for(i=0;i<ui.value;i++) {
		  	var sub_slider_values = []
		    $("#create-pane").append("<h1>"+i+"</h1>");
		    $("#create-pane").append("<div id='new-slider-"+i+"'></div>");
		    $('#new-slider-'+i).slider({range: true});
				// console.log(sub_slider_values)
		  }
		  $.ajax({
	      type: 'POST',
	      url: '/readings',
	      cache: true,
	      data: {m_value: main_slider },
    	})
		});

	  $('#new-slider-1').on("slidechange", function(event, ui){
		 	main_slider = ui.value
		 	console.log(main_slider);
		  $.ajax({
	      type: 'POST',
	      url: '/readings',
	      cache: true,
	      data: {m_value_1: main_slider },
    	})
		});

		$('#new-slider-2').on("slidechange", function(event, ui){
		 	main_slider = ui.value
		 	console.log(main_slider);
		  $.ajax({
	      type: 'POST',
	      url: '/readings',
	      cache: true,
	      data: {m_value_2: main_slider },
    	})
		});
		$('#new-slider-3').on("slidechange", function(event, ui){
		 	main_slider = ui.value
		 	console.log(main_slider);
		  $.ajax({
	      type: 'POST',
	      url: '/readings',
	      cache: true,
	      data: {m_value_3: main_slider },
    	})
		});
		$('#new-slider-4').on("slidechange", function(event, ui){
		 	main_slider = ui.value
		 	console.log(main_slider);
		  $.ajax({
	      type: 'POST',
	      url: '/readings',
	      cache: true,
	      data: {m_value_4: main_slider },
    	})
		});
		$('#new-slider-5').on("slidechange", function(event, ui){
		 	main_slider = ui.value
		 	console.log(main_slider);
		  $.ajax({
	      type: 'POST',
	      url: '/readings',
	      cache: true,
	      data: {m_value_5: main_slider },
    	})
		});
		$('#new-slider-6').on("slidechange", function(event, ui){
		 	main_slider = ui.value
		 	console.log(main_slider);
		  $.ajax({
	      type: 'POST',
	      url: '/readings',
	      cache: true,
	      data: {m_value_6: main_slider },
    	})
		});
		$('#new-slider-7').on("slidechange", function(event, ui){
		 	main_slider = ui.value
		 	console.log(main_slider);
		  $.ajax({
	      type: 'POST',
	      url: '/readings',
	      cache: true,
	      data: {m_value_7: main_slider },
    	})
		});
		$('#new-slider-8').on("slidechange", function(event, ui){
		 	main_slider = ui.value
		 	console.log(main_slider);
		  $.ajax({
	      type: 'POST',
	      url: '/readings',
	      cache: true,
	      data: {m_value_8: main_slider },
    	})
		});
		$('#new-slider-9').on("slidechange", function(event, ui){
		 	main_slider = ui.value
		 	console.log(main_slider);
		  $.ajax({
	      type: 'POST',
	      url: '/readings',
	      cache: true,
	      data: {m_value_9: main_slider },
    	})
		});
		$('#new-slider-0').on("slidechange", function(event, ui){
		 	main_slider = ui.value
		 	console.log(main_slider);
		  $.ajax({
	      type: 'POST',
	      url: '/readings',
	      cache: true,
	      data: {m_value_0: main_slider },
    	})
		});
	


});