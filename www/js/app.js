$(document).on("pagecontainershow", function (event, ui) {
        console.log(ui);
        pageid=ui.toPage[ui.toPage.length-1].id;
	alert(pageid);
	switch ($.mobile.activePage[0].id) {
		case "page_main":
			console.log("On main page, checking setup status");
				if (localStorage.AccessinTABSetupComplete) {
					console.log("AccessinTAB has been setup. Checking in with AccessinCommand");
				} else {
					console.log("AccessinTAB requires setup. Redirecting to setup page");
					$.mobile.navigate("page_setup.html");
				};
			break;
	};

});
