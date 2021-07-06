// This doesn't work and is an attempt to only get some editor.css styles to show up on some pages' tinyMCE editor

// window.onload = function() {
//    let myiFrame = document.getElementById("Form_EditForm_Content_ifr");
//    let doc = myiFrame.contentDocument;
//    doc.body.innerHTML = doc.body.innerHTML + '<style>/******* Put your styles here *******</style>';
// }
// $("#Form_EditForm_Content_ifr").on("load", function() {
//   let head = $("#myiFrame").contents().find("head");
//   let css = '<style>/********* Put your styles here **********</style>';
//   $(head).append(css);
// });

// (function($) {
//     $(document).ready(function(){

//           let style = $("#Form_EditForm_Content_ifr").contents().find("style");
//           console.log($("#Form_EditForm_Content_ifr"));
//           let css = 'p{color: red;}';
//           $(style).append(css);
//     })
// })(jQuery);
