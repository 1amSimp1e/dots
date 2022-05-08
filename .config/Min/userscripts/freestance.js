// ==UserScript==
// @name Redirect to invidious
// @match https*://youtube.com
// @match https*://www.youtube.com
// @run-at document-start
// ==/UserScript==

window.location.hostname = "invidious.snopyta.org";
