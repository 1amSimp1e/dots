// ==UserScript==
// @name Overlay Scrollbars
// @match *
// @run-at document-start
// ==/UserScript==

// hide unditl Overlay Scrollbars is loaded
var style = document.createElement("style");
style.textContent = `
/* width */
::-webkit-scrollbar {
  width: 0px;
  height: 0px;
}
  `;
document.head.appendChild(style);

// include js
var script = document.createElement("script");
script.type = "text/javascript";
script.src =
  "https://cdnjs.cloudflare.com/ajax/libs/overlayscrollbars/1.13.0/js/OverlayScrollbars.js";
document.head.appendChild(script);

// include css
document.head.insertAdjacentHTML(
  "beforeend",
  '<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/overlayscrollbars/1.13.0/css/OverlayScrollbars.css">'
);

// load OverlayScrollbars
// for some reason document.addEventListener("DOMContentLoaded", function() {}); does not work
// using setTimeout instead
// On error CSS scrollbars are applied

setTimeout(function () {
  try {
    var foo = (function () {
      console.log("==> Loading OverlayScrollbars.", new Date());
      OverlayScrollbars(document.querySelectorAll("body"), {});
    })();
  } catch (err) {
    console.log(
      "Error, probaly due to Content Security Policy directive",
      new Date()
    );
    console.log("Using CSS scrollbars instead", new Date());

    var style = document.createElement("style");
    style.textContent = `
      html, body {
        margin: 0;
        padding: 0;
      }
      body {
        overflow: overlay;
      }
      /* width */
      ::-webkit-scrollbar {
        width: 10px;
        height: 10px;
      }
      /* Track */
      ::-webkit-scrollbar-track {
        background: transparent; 
      }
      /* Handle */
      ::-webkit-scrollbar-thumb {
        background: #888; 
        visibility: hidden; 
      }
      /* Handle on hover */
      ::-webkit-scrollbar-thumb:hover {
        background: #555; 
        visibility: visible;
      }
        `;
    document.head.appendChild(style);
  }
}, 1000);
