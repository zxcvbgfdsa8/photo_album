$(function() {
	console.log(1);
  $("#photo_tags").tokenInput("/photos/tags.json", {
    crossDomain: false,
    prePopulate: $("#photos_tags").data("pre"),
    preventDuplicates: true,
    noResultsText: "No result.",
    theme: "facebook"
  });
});