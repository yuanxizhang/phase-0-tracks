# Selecting Element
## To Select By
* Element type (for example, <img>) $(“img”)
* All elements  $(“*”)
* ID (for example, id=”thisIsTheID”)  $(“#thisIsTheID”)
* Class (for example, class=”someClass”)  $(“.someClass”)
* Order (for example, the first or last <img> element)  $(“img:first”) $(“img:last”)
* Attribute, (for example, to get the length attribute of <img>)  $(“img[height]”).length
* Parent (for example, the parent of <div>) $(“div:parent”)
* Child (for example, the first or last child of <div>) $(“div:first-child”) $(“div:last-child”)

# Add Effect
* Hide  $(“:submit”).click(function () {
$(“div”).hide();
});
* Show  $(“:submit”).click(function () {
$(“#showme”).show();
});
* Slide down  $(“:submit”).click(function () {
$(“#showme”).slideDown();
});
* Slide up  $(“:submit”).click(function () {
$(“#hideme”).slideUp();
});
* Fade in $(“:submit”).click(function () {
$(“#showme”).fadeIn();
});
* Fade out  $(“:submit”).click(function () {
$(“#hideme”).fadeOut();
});

# Insert Contant
## Place Content Code
* In front of and outside the <div> (before)  $(“:submit”).click(function () {
$(“div”).before(“Before<br />”);
});
* In back of and outside the <div> (after)  $(“:submit”).click(function () {
$(“div”).after(“After<br />”);
});
* Inside the <div> but before
existing content (prepend)  $(“:submit”).click(function () {
$(“div”).prepend(“New Content!”);
});
* Inside the <div> but after
existing content (append) $(“:submit”).click(function () {
$(“div”).append(“New Content!”);
});
