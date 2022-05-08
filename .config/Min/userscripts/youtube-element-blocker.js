// ==UserScript==
// @name        YouTube element blocker
// @description Block specific elements of YouTube, like the Feed, Comments, Subscriptions bar and more
//
// @version     1.5.0
// @license     MIT
// @author      Syndamia
//
// @source      https://github.com/Syndamia/min-youtube-element-blocker
// @supportURL  https://github.com/Syndamia/min-youtube-element-blocker/issues
// @homepage    https://greasyfork.org/en/scripts/419701-youtube-element-blocker
// @icon        https://upload.wikimedia.org/wikipedia/commons/1/1a/YouTube_play_button_dark_rounded_square_%282013-2017%29.svg
//
// @namespace   Syndamia
// @match       *://*.youtube.com/*
// @run-at      document-start
// ==/UserScript==

/* Change the word after the name of a setting (and after the column character) to
 * true to enable it and to false to disable it (DO NOT REMOVE THE COMMA AFTER THE WORD)
 * For example, enabled hideFeed will look like this: "hideFeed" : true,
 */

var generalSettings = {
  // The feed is the collection of videos, shown on the home page
  hideFeed: false,

  // The guide drawer is the drawer (sidebar) to the left
  // which is used for navigating Playlists, Subscriptions, ...
  hideGuideDrawer: false,

  hideGuideHomeTab: false,

  hideGuideTrendingTab: false,

  hideGuideShortsTab: false,

  hideGuideLibraryTab: false,

  hideGuideMoreFromYouTube: false,

  // The last section is the part under "More from YouTube",
  // where you can find the buttons for "Help", "Send Feedback", ...
  hideGuideLastSection: false,

  // The footer is the part at the very bottom of the guide drawer
  // that shows links like "About", "Terms", "Contact us", ...
  hideGuideFooter: false,

  // Related videos are the recommendations at the end of a video
  hideRelated: false,

  hideChat: false,

  // The sidebar is the section to the right of a video
  // where you can find video and playlist suggestions
  hideSidebar: false,

  hideMerch: false,

  hideComments: false,
};

/* The whole YouTube website can also be blocked (independently of the other settings)
 * depending on the time of day and the day in the week. This feature is called timeout.
 */

var timeout = {
  enabled: false,
  // Determines days, in which the timeout will be active. Each day is separated
  // by a comma. Can be 0 to 6, where 0 is Sunday, 1 is Monday and 6 is Saturday.
  activeDays: [0, 1, 2, 3, 4, 5, 6],

  // Determines time from which the timeout will block YouTube.
  // Must be numbers, from 0 to 24 for hour and from 0 to 59 for minutes.
  startHour: 9,
  startMinutes: 0,

  // Determines end of time from which the timeout will block YouTube.
  // Must be numbers, from 0 to 24 for hour and from 0 to 59 for minutes.
  endHour: 17,
  endMinutes: 0,
};

/************************************/
/* END OF USER CONFIGURABLE OPTIONS */
/************************************/

/* CSS that is added to page for hiding the elements */

var css = {
  hideFeed: `
    #feed, ytd-browse[page-subtype=home] {
      display: none !important;
    }`,

  hideGuideDrawer: `
    #appbar-guide-menu {
      width: 0;
    }
    app-drawer#guide {
      display: none !important;
    }
    ytd-mini-guide-renderer {
      display: none !important;
    }
    #guide-button {
      display: none !important;
    }`,

  hideGuideHomeTab: `
    #home-guide-item {
      display: none !important;
    }
    ytd-guide-section-renderer:first-child #items > ytd-guide-entry-renderer:first-child {
      display: none !important;
    }
    #appbar-nav li:first-child {
      display: none !important;
    }
    ytd-mini-guide-renderer #items ytd-mini-guide-entry-renderer:first-child {
      display: none !important;
    }`,

  hideGuideTrendingTab: `
    #trending-guide-item {
      display: none !important;
    }
    ytd-guide-section-renderer:first-child #items > ytd-guide-entry-renderer:nth-child(2) {
      display: none !important;
    }
    #appbar-nav li:nth-child(2) {
      display: none !important;
    }
    ytd-mini-guide-renderer #items ytd-mini-guide-entry-renderer:nth-child(2) {
      display: none !important;
    }`,

  hideGuideShortsTab: `
    ytd-guide-section-renderer:first-child #items > ytd-guide-entry-renderer:nth-child(3) {
      display: none !important;
    }
    #appbar-nav li:nth-child(3) {
      display: none !important;
    }
    ytd-mini-guide-renderer #items ytd-mini-guide-entry-renderer:nth-child(3) {
      display: none !important;
    }`,

  hideGuideLibraryTab: `
    ytd-guide-section-renderer:first-child #items > ytd-guide-collapsible-section-entry-renderer > #header {
      display: none !important;
    }`,

  hideGuideMoreFromYouTube: `
    ytd-guide-section-renderer:nth-last-child(2) {
      display: none !important;
    }`,

  hideGuideLastSection: `
    ytd-guide-section-renderer:last-child {
      display: none !important;
    }`,

  hideGuideFooter: `
    #footer {
      display: none !important;
    }`,

  hideRelated: `
    .ytp-endscreen-content {
      display: none !important;
    }
    .ytp-ce-video {
      display: none !important;
    }`,

  hideChat: `
    ytd-live-chat-frame {
        display: none !important;
    }`,

  hideSidebar: `
    #watch7-sidebar-contents, #related {
      display: none !important;
    }`,

  hideMerch: `
    .ytd-merch-shelf-renderer {
      display: none !important;
    }`,

  hideComments: `
    #watch-discussion, #comments {
      display: none !important;
    }`,
};

// Element, that will contain CSS of activated settings
var style = document.createElement("style");

if (timeout.enabled) {
  var now = new Date(),
    start = new Date(),
    end = new Date();

  start.setHours(timeout.startHour, timeout.startMinutes, 0);
  end.setHours(timeout.endHour, timeout.endMinutes, 0);

  if (now >= start && now < end && timeout.activeDays.includes(now.getDay())) {
    style.textContent = "body { display: none !important; }";
  }
}

// Execute general settings, only if the timeout isn't active
if (style.textContent === "") {
  for (var setting in generalSettings) {
    if (!generalSettings[setting]) continue;

    style.textContent += css[setting];
  }
}

document.head.appendChild(style);
