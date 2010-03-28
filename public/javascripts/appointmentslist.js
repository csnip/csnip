	$(document).ready(function() {
		function disablePrintButton() {
			checkBoxes = $("#appointment_form :checkbox[checked=true]");
			$("#appointment_form :input[type=submit]").attr('disabled', (checkBoxes.length == 0));
		}
		
		$("#appointment_form :checkbox").click(function() { disablePrintButton(); });
		
		disablePrintButton();
	});