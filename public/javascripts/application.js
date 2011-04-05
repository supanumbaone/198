// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
	
	// Code for the Nested Replies on the show post page
	$('.comment_link').click(function() { 
		$('.comment_form, .edit_form, .edit_comment').hide();
		$(this).parent().find(".comment_form").show();
	});
	
	$('.edit_comment_link').click(function() { 
		$('.comment_form, .edit_form').hide();
		$(this).parent().find(".edit_comment").show();
		$(this).parent().find(".comment_body").hide();
	});
	
	$('.main_reply').click(function() { 
		$('.comment_form, .edit_form').hide();
		$(".comment_form_main").show();
	});
	
	$('.teammate_trigger').click(function() {
		$(".target").val($(".target").val() + $(".autocomplete").val() + "\n");		
		$(".autocomplete").val("");
	});
	
	$('.team_select').change(function() {
		$(".target").val($(".target").val() + $(this).val() + "\n");		
	});
	
	$(function() {
			var availableNames = [
				"Christopher Avery <sirusto@gmail.com>",
				"Al Colmenar <acolmena@ucsd.edu",
				"Elioth Artur Almada <ealmada@ucsd.edu>",
				"Hyeong Mi An <hman@ucsd.edu>",
				"Radley Edwi Angelo <rangelo@ucsd.edu>",
				"Aria Andre Arasteh <aarasteh@ucsd.edu>",
				"Nathaniel Charle Asuncion <nasuncio@ucsd.edu>",
				"Kerwin Almer Manalan Azares <kazares@ucsd.edu>",
				"Jane Barrientos <jabarrie@ucsd.edu>",
				"Matthew Christophe Borger <mborger@ucsd.edu>",
				"Andrew Desmon Budiman <adbudima@ucsd.edu>",
				"Alvin Carin Bundalian <abundali@ucsd.edu>",
				"Kevin Castana Caasi <kcaasi@ucsd.edu>",
				"Jackson Pau Callaway <jcallawa@ucsd.edu>",
				"Lance Salvado Castillo <lscastil@ucsd.edu>",
				"Richard  Castro <rscastro@ucsd.edu>",
				"Jacky  Chan <j5chan@ucsd.edu>",
				"Christopher Chen-kun Chang <c2chang@ucsd.edu>",
				"Chuan Y Chang <cyc025@ucsd.edu>",
				"Yuj Chang <yuc026@ucsd.edu>",
				"Hosoo Christophe Choi <hcchoi@ucsd.edu>",
				"Kevin Kyong Ji Chon <kkchon@ucsd.edu>",
				"Arick  Chow <aychow@ucsd.edu>",
				"Matthew Kay Ye Chu <mkchu@ucsd.edu>",
				"Eric Yanho Chung <e5chung@ucsd.edu>",
				"Neyv Cisneros <ncisnero@ucsd.edu>",
				"Crystal T Cross <ctcross@ucsd.edu>",
				"Jonathan Hoize Cui <jhcui@ucsd.edu>",
				"Anthon Dang <a6dang@ucsd.edu>",
				"Solomo Davidsohn <sdavidso@ucsd.edu>",
				"Sally Chen Do <s2do@ucsd.edu>",
				"Aravindh Dill Dorai <adorai@ucsd.edu>",
				"Brian Huyn Duong <b1duong@ucsd.edu>",
				"Fredd Espino <fespino@ucsd.edu>",
				"Maria De La Lu Gaeta <mgaeta@ucsd.edu>",
				"Eri Gallegos <ergalleg@ucsd.edu>",
				"Patric Guan <pguan@ucsd.edu>",
				"Kevi He <kehe@ucsd.edu>",
				"Nathan Alexande Heisey <nheisey@ucsd.edu>",
				"Michael Sieng Lun Hii <mhii@ucsd.edu>",
				"Austin Colema Hill <a2hill@ucsd.edu>",
				"Tyler Davi Hodgkins <thodgkin@ucsd.edu>",
				"Thomas Da Hoffman <thoffman@ucsd.edu>",
				"William Jorda Holloway <wjhollow@ucsd.edu>",
				"David Alexande Ing <ding@ucsd.edu>",
				"Joe Jauregui <jjauregu@ucsd.edu>",
				"Mahir Sing Kalra <mskalra@ucsd.edu>",
				"Kayla Mari Kimura <kmkimura@ucsd.edu>",
				"Bryant Jonatha Kou <bkou@ucsd.edu>",
				"Dao Din Lam <d2lam@ucsd.edu>",
				"Kelvin Gernat Lapidario <klapidar@ucsd.edu>",
				"Kevin Estuard Lau Fang <klaufang@ucsd.edu>",
				"Nicholas Matthe Lau <nmlau@ucsd.edu>",
				"Kenneth Yuet Ku Law <klaw@ucsd.edu>",
				"Quan Min Le <qmle@ucsd.edu>",
				"Byung Joo Lee <bjl007@ucsd.edu>",
				"Kwan Chu Lee <kcl007@ucsd.edu>",
				"Sangjoo Lee <sal009@ucsd.edu>",
				"Christopher Hon Leung <c4leung@ucsd.edu>",
				"Ernes Lim <erlim@ucsd.edu>",
				"Sand Lim <salim@ucsd.edu>",
				"Henr Lin <helin@ucsd.edu>",
				"Suma Malani <smalani@ucsd.edu>",
				"Jonatha Masehi-Lano <jmasehil@ucsd.edu>",
				"Ashle McGuire <amcguire@ucsd.edu>",
				"Derrick Josep McMillen <dmcmille@ucsd.edu>",
				"Lewis Brandon Dougla Miller <lbmiller@ucsd.edu>",
				"Haronid Mille Moncivais <hmonciva@ucsd.edu>",
				"Andrew Josep Muinos <amuinos@ucsd.edu>",
				"Rafael Jos Nevarez <rnevarez@ucsd.edu>",
				"James Ceci Newman <jcnewman@ucsd.edu>",
				"Andrew Cheuk-Wa Ng <acng@ucsd.edu>",
				"Dorothy Phuong Khan Nguyen <dpn003@ucsd.edu>",
				"Quyn Nguyen <qun003@ucsd.edu>",
				"Thinh Hu Nguyen <thn024@ucsd.edu>",
				"Jonathan Rya Nogales <jnogales@ucsd.edu>",
				"Kazuhit Ochiai <kaochiai@ucsd.edu>",
				"Matthe Olaranont <molarano@ucsd.edu>",
				"Miguel Vicent Paysan <mpaysan@ucsd.edu>",
				"Alexander Becket Peterson <abpeters@ucsd.edu>",
				"Kristina Lyn Pinkerton <kpinkert@ucsd.edu>",
				"Gabriel Ponce <gaponce@ucsd.edu>",
				"Ambu Punn <apunn@ucsd.edu>",
				"Con Qin <coqin@ucsd.edu>",
				"Jake Benjami Rabinowitz <jrabinow@ucsd.edu>",
				"Oren Michae Radousky <oradousk@ucsd.edu>",
				"Scott Anthon Schmidl <sschmidl@ucsd.edu>",
				"Kurt Bradle Selander <kselande@ucsd.edu>",
				"Jordan Isaa Sendar <jsendar@ucsd.edu>",
				"Parima Aja Shah <pashah@ucsd.edu>",
				"Andrew Yee Shen <ayshen@ucsd.edu>",
				"Jae  Shin <jws001@ucsd.edu>",
				"Justin Rober Shitanishi <jshitani@ucsd.edu>",
				"Bowe Shu <boshu@ucsd.edu>",
				"Melvin U Fa Sin <msin@ucsd.edu>",
				"Kiley Hyu Sok <shsok@ucsd.edu>",
				"Masaki Bria Sono <msono@ucsd.edu>",
				"Olg Sorokina <osorokin@ucsd.edu>",
				"Carla Emil Sun <cesun@ucsd.edu>",
				"Minh  Ta <mqta@ucsd.edu>",
				"Sheldon Rya Tanaka <srtanaka@ucsd.edu>",
				"Edwi Tao <etao@ucsd.edu>",
				"Feira Tao <ftao@ucsd.edu>",
				"She Tian <stian@ucsd.edu>",
				"Thanh Tha Tran <ttt031@ucsd.edu>",
				"Brian Nh Truong <bntruong@ucsd.edu>",
				"Yun-Tsan Tsai <y3tsai@ucsd.edu>",
				"Daniel Isaa Valles <dvalles@ucsd.edu>",
				"Victor  Vazquez <vmvazque@ucsd.edu>",
				"John Josep Vivio <jvivio@ucsd.edu>",
				"Evan Keit Walker <ekwalker@ucsd.edu>",
				"Gar Wang <g5wang@ucsd.edu>",
				"Pengy Wang <pew007@ucsd.edu>",
				"Shen Wang <shw003@ucsd.edu>",
				"Helen Min Ke Wong <hmwong@ucsd.edu>",
				"Samson Richar Wong <srwong@ucsd.edu>",
				"Chienmin Yang <chy006@ucsd.edu>",
				"Joyc Yeh <j6yeh@ucsd.edu>",
				"Brian Case Yip <bcyip@ucsd.edu>",
				"Davi Yoo <dayoo@ucsd.edu>",
				"Jong Wo Yoon <jwyoon@ucsd.edu>",
				"Benjamin Ge Young <byoung@ucsd.edu>",
				"Kevin  Zhang <k7zhang@ucsd.edu>",
				"Franklin Yuqin Zhou <fyzhou@ucsd.edu>"
			];
			$( ".autocomplete" ).autocomplete({
				source: availableNames
			});
		});
	
	
});