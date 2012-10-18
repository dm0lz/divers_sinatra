
$( function () {
	$('#maclass').html('Hello world. Ce texte est affiché par jQuery.');

	$('section h2').bind('click', function(){
		if($(this).hasClass('lalala')){
		$(this).removeClass('lalala');
		$(this).addClass('tatata');
		}
		else{
		$(this).removeClass('tatata');
		$(this).addClass('lalala');
		}
		
	});	


	$('section.navbar-inner').bind('click', function(){
		
		if ($('.navbar-inner').hasClass('down')){
			$('.navbar-inner').removeClass('down');
			$('.navbar-inner').addClass('up');
		} else {
			$('.navbar-inner').addClass('down');
			$('.navbar-inner').removeClass('up');

			$('.navbar-inner').append('<h2>Youp</h2>');
			$('.navbar-inner').after('<h1>Yep</h1>');
			$('.navbar-inner').before('ubefore');
			$('.navbar-inner').prepend('prpend');

		}
	});

		

	$('body').bind('keypress', function(event) {

			var mySound = new buzz.sound("/audio/matches-1.mp3");
			var mySound2 = new buzz.sound("/audio/matches-2.mp3");
			var mySound3 = new buzz.sound("/audio/matches-4.mp3");
			var mySound4 = new buzz.sound("/audio/flame-1.mp3");
			var mySound5 = new buzz.sound("/audio/wood-cracking-2.mp3");
			var mySound6 = new buzz.sound("/audio/wood-logs-1.mp3");

			if (event.which == 97) { mySound.load().play();}
			if (event.which == 98) {mySound2.load().play();}
			if (event.which == 99) {mySound3.load().play();}
			if (event.which == 100) {mySound4.load().play();}
			if (event.which == 101) {mySound5.load().play();}
			if (event.which == 102) {mySound6.load().play();}
			if (event.which == 103) {mySound.load().play();}

			/*switch (event) {		

			case 97:
				alert("a");
			break;

			case event.which == 98 :
				alert("yop c le b");
				break;

			case event.which == 99 :
				alert("yop c le c");
				break;

			case event.which == 100 :
				alert("yop c le d");
				break;

			case event.which == 101 :
				alert("yop c le e");
				break;

			case 102 :
				alert("yop c le f");
				break; 
		}*/

		}
	);


});