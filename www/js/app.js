$(document).on("pagecontainershow", function (event, ui) {
        console.log(ui);
        pageid=ui.toPage[ui.toPage.length-1].id;
	alert(pageid);
});
