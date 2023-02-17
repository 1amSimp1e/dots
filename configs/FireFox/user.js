//
/* You may copy+paste this file and use it as it is.
 *
 * If you make changes to your about:config while the program is running, the
 * changes will be overwritten by the user.js when the application restarts.
 *
 * To make lasting changes to preferences, you will have to edit the user.js.
 */

/****************************************************************************
 * Betterfox                                                                *
 * "Ad meliora"                                                             *
 * version: 107                                                             *
 * url: https://github.com/yokoffing/Betterfox                              *
****************************************************************************/

/****************************************************************************
 * SECTION: SECUREFOX                                                       *
****************************************************************************/
/** TRACKING PROTECTION ***/
user_pref("browser.contentblocking.category", "strict");
user_pref("privacy.trackingprotection.emailtracking.enabled", true);
user_pref("privacy.query_stripping.strip_list", "__hsfp __hssc __hstc __s _hsenc _openstat dclid fbclid gbraid gclid hsCtaTracking igshid mc_eid ml_subscriber ml_subscriber_hash msclkid oft_c oft_ck oft_d oft_id oft_ids oft_k oft_lk oft_sk oly_anon_id oly_enc_id rb_clickid s_cid twclid vero_conv vero_id wbraid wickedid yclid");
user_pref("urlclassifier.trackingSkipURLs", "*.reddit.com, *.twitter.com, *.twimg.com, *.tiktok.com");
user_pref("urlclassifier.features.socialtracking.skipURLs", "*.instagram.com, *.twitter.com, *.twimg.com");
user_pref("privacy.partition.always_partition_third_party_non_cookie_storage", true);
user_pref("privacy.partition.always_partition_third_party_non_cookie_storage.exempt_sessionstorage", false);
user_pref("beacon.enabled", false);
user_pref("browser.uitour.enabled", false);

/** OCSP & CERTS / HPKP ***/
user_pref("security.OCSP.enabled", 0);
user_pref("security.remote_settings.crlite_filters.enabled", true);
user_pref("security.pki.crlite_mode", 2);
user_pref("security.cert_pinning.enforcement_level", 2);

/** SSL / TLS ***/
user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true);
user_pref("browser.xul.error_pages.expert_bad_cert", true);
user_pref("security.tls.enable_0rtt_data", false);

/** FONTS ***/
user_pref("layout.css.font-visibility.private", 1);
user_pref("layout.css.font-visibility.trackingprotection", 1);

/** RFP ***/
user_pref("browser.startup.blankWindow", false);
user_pref("browser.display.use_system_colors", false);

/** DISK AVOIDANCE ***/
user_pref("browser.cache.disk.enable", false);
user_pref("browser.privatebrowsing.forceMediaMemoryCache", true);
user_pref("media.memory_cache_max_size", 65536);
user_pref("browser.sessionstore.privacy_level", 2);
user_pref("browser.helperApps.deleteTempFileOnExit", true);
user_pref("browser.pagethumbnails.capturing_disabled", true);

/** SHUTDOWN & SANITIZING ***/
user_pref("privacy.history.custom", true);

/** SPECULATIVE CONNECTIONS ***/
user_pref("network.http.speculative-parallel-limit", 0);
user_pref("network.dns.disablePrefetch", true);
user_pref("browser.urlbar.speculativeConnect.enabled", false);
user_pref("browser.places.speculativeConnect.enabled", false);
user_pref("network.prefetch-next", false);
user_pref("network.predictor.enabled", false);
user_pref("network.predictor.enable-prefetch", false);

/** SEARCH / URL BAR ***/
user_pref("browser.search.separatePrivateDefault.ui.enabled", true);
user_pref("browser.urlbar.update2.engineAliasRefresh", true);
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.suggest.quicksuggest.sponsored", false);
user_pref("browser.urlbar.suggest.quicksuggest.nonsponsored", false);
user_pref("network.IDN_show_punycode", true);

/** HTTPS-ONLY MODE ***/
user_pref("dom.security.https_only_mode", true);
user_pref("dom.security.https_only_mode_error_page_user_suggestions", true);

/** DNS-over-HTTPS (DOH) ***/
user_pref("network.dns.skipTRR-when-parental-control-enabled", false);

/** PROXY / SOCKS / IPv6 ***/
user_pref("network.proxy.socks_remote_dns", true);
user_pref("network.file.disable_unc_paths", true);
user_pref("network.gio.supported-protocols", "");

/** PASSWORDS AND AUTOFILL ***/
user_pref("signon.formlessCapture.enabled", false);
user_pref("signon.privateBrowsingCapture.enabled", false);
user_pref("signon.autofillForms", false);
user_pref("signon.rememberSignons", false);
user_pref("editor.truncate_user_pastes", false);
user_pref("layout.forms.reveal-password-button.enabled", true);

/** ADDRESS + CREDIT CARD MANAGER ***/
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.creditCards.enabled", false);
user_pref("extensions.formautofill.heuristics.enabled", false);
user_pref("browser.formfill.enable", false);

/** MIXED CONTENT + CROSS-SITE ***/
user_pref("network.auth.subresource-http-auth-allow", 1);
user_pref("pdfjs.enableScripting", false);
user_pref("extensions.postDownloadThirdPartyPrompt", false);
user_pref("permissions.delegation.enabled", false);

/** HEADERS / REFERERS ***/
user_pref("network.http.referer.XOriginTrimmingPolicy", 2);

/** CONTAINERS ***/
user_pref("privacy.userContext.ui.enabled", true);

/** WEBRTC ***/
user_pref("media.peerconnection.ice.proxy_only_if_behind_proxy", true);
user_pref("media.peerconnection.ice.default_address_only", true);

/** GOOGLE SAFE BROWSING ***/
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
user_pref("browser.safebrowsing.blockedURIs.enabled", false);

/** MOZILLA ***/
user_pref("identity.fxaccounts.enabled", false);
user_pref("browser.tabs.firefox-view", false);
user_pref("dom.push.enabled", false);
user_pref("permissions.default.desktop-notification", 2);
user_pref("permissions.default.geo", 2);
user_pref("geo.provider.network.url", "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%");
user_pref("geo.provider.ms-windows-location", false); // WINDOWS
user_pref("geo.provider.use_corelocation", false); // MAC
user_pref("geo.provider.use_gpsd", false); // LINUX
user_pref("geo.provider.use_geoclue", false); // LINUX
user_pref("browser.region.update.enabled", false);
user_pref("permissions.manager.defaultsUrl", "");
user_pref("webchannel.allowObject.urlWhitelist", "");


/** TELEMETRY ***/
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.server", "data:,");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("browser.discovery.enabled", false);
user_pref("browser.tabs.crashReporting.sendReport", false);
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false);
user_pref("captivedetect.canonicalURL", "");
user_pref("network.captive-portal-service.enabled", false);
user_pref("network.connectivity-service.enabled", false);
user_pref("default-browser-agent.enabled", false);
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");
user_pref("browser.ping-centre.telemetry", false);
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);

/****************************************************************************
 * SECTION: PESKYFOX                                                        *
****************************************************************************/
/** MOZILLA UI ***/
user_pref("layout.css.prefers-color-scheme.content-override", 2);
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("app.update.suppressPrompts", true);
user_pref("accessibility.force_disabled", 1);
user_pref("browser.compactmode.show", true);
user_pref("browser.privatebrowsing.vpnpromourl", "");
user_pref("extensions.getAddons.showPane", false);
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);
user_pref("browser.shell.checkDefaultBrowser", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);
user_pref("browser.preferences.moreFromMozilla", false);
user_pref("browser.tabs.tabmanager.enabled", false);
user_pref("browser.aboutwelcome.enabled", false);
user_pref("findbar.highlightAll", true);
user_pref("middlemouse.contentLoadURL", false);
user_pref("browser.privatebrowsing.enable-new-indicator", false);

/** FULLSCREEN ***/
user_pref("full-screen-api.transition-duration.enter", "0 0");
user_pref("full-screen-api.transition-duration.leave", "0 0");
user_pref("full-screen-api.warning.delay", 0);
user_pref("full-screen-api.warning.timeout", 0);

/** URL BAR ***/
user_pref("browser.urlbar.suggest.engines", false);
user_pref("browser.urlbar.suggest.topsites", false);
user_pref("browser.urlbar.suggest.calculator", true);
user_pref("browser.urlbar.unitConversion.enabled", true);

/** NEW TAB PAGE ***/
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);


// first line is a comment
var {classes:Cc,interfaces:Ci,utils:Cu} = Components;
var newTabURL = "about:blank";
aboutNewTabService = Cc["@mozilla.org/browser/aboutnewtab-service;1"].getService(Ci.nsIAboutNewTabService);
aboutNewTabService.newTabURL = newTabURL;

// first line is a comment
var {classes:Cc,interfaces:Ci,utils:Cu} = Components;
var newTabURL = "about:blank";
aboutNewTabService = Cc["@mozilla.org/browser/aboutnewtab-service;1"].getService(Ci.nsIAboutNewTabService);
aboutNewTabService.newTabURL = newTabURL;

/*** POCKET ***/
user_pref("extensions.pocket.enabled", false);

/** DOWNLOADS ***/
user_pref("browser.download.useDownloadDir", false);
user_pref("browser.download.alwaysOpenPanel", false);
user_pref("browser.download.manager.addToRecentDocs", false);
user_pref("browser.download.always_ask_before_handling_new_types", true);

/** PDF ***/
user_pref("browser.download.open_pdf_attachments_inline", true);
user_pref("pdfjs.sidebarViewOnLoad", 1);

/** TAB BEHAVIOR ***/
user_pref("browser.link.open_newwindow.restriction", 0);
user_pref("dom.disable_window_move_resize", true);
user_pref("browser.tabs.loadBookmarksInTabs", true);
user_pref("browser.bookmarks.openInTabClosesMenu", false);
user_pref("clipboard.plainTextOnly", true);
user_pref("dom.popup_allowed_events", "click dblclick");
user_pref("layout.css.has-selector.enabled", true);

/****************************************************************************
 * SECTION: FASTFOX                                                         *
****************************************************************************/
user_pref("browser.startup.preXulSkeletonUI", false);
user_pref("layout.css.grid-template-masonry-value.enabled", true);
user_pref("dom.enable_web_task_scheduling", true);
user_pref("layout.css.animation-composition.enabled", true);
user_pref("nglayout.initialpaint.delay", 0); 
user_pref("nglayout.initialpaint.delay_in_oopif", 0); 
// PREF: faster SSL
user_pref("network.ssl_tokens_cache_capacity", 32768); // more TLS token caching (fast reconnects)

// PREF: increase DNS cache
user_pref("network.dnsCacheEntries", 20000);	
user_pref("network.dnsCacheExpiration", 3600);	
user_pref("network.dnsCacheExpirationGracePeriod", 240);

user_pref("network.buffer.cache.size", 262144); 
user_pref("network.buffer.cache.count", 128); 

/** GFX ***/
user_pref("gfx.webrender.all", true);
user_pref("gfx.webrender.precache-shaders", true);
user_pref("gfx.webrender.compositor", true);
user_pref("gfx.canvas.accelerated", true);
user_pref("gfx.canvas.accelerated.cache-items", 32768);
user_pref("gfx.canvas.accelerated.cache-size", 4096);
user_pref("gfx.content.skia-font-cache-size", 80);
user_pref("image.cache.size", 10485760);
user_pref("image.mem.decode_bytes_at_a_time", 65536);
user_pref("image.mem.shared.unmap.min_expiration_ms", 120000);
user_pref("layers.gpu-process.enabled", true);
user_pref("media.memory_cache_max_size", 1048576);
user_pref("media.memory_caches_combined_limit_kb", 3145728);
user_pref("media.hardware-video-decoding.force-enabled", true);

/** CACHE ***/
user_pref("browser.cache.memory.max_entry_size", 51200);

/****************************************************************************
 * SECTION: SMOOTHFOX                                                       *
****************************************************************************/
// see https://github.com/yokoffing/Betterfox/blob/master/Smoothfox.js
// Enter your scrolling prefs below this line:

/****************************************************************************************
 * OPTION 1: INSTANT SCROLLING (SIMPLE ADJUSTMENT)                                      *
****************************************************************************************/
// recommended for 60hz displays
user_pref("general.smoothScroll",                       true); // DEFAULT
user_pref("mousewheel.default.delta_multiplier_y",      300);  // 250-500

/****************************************************************************************
 * OPTION 2: SMOOTH SCROLLING                                                           *
****************************************************************************************/
// recommended for 90hz+ displays
// user_pref("general.smoothScroll",                       true); // DEFAULT
// user_pref("mousewheel.default.delta_multiplier_y",      265); // 250-500
// user_pref("general.smoothScroll.msdPhysics.enabled",    true);

/****************************************************************************************
 * OPTION 3: NATURAL SMOOTH SCROLLING [MODIFIED]                                        *
****************************************************************************************/
// from https://github.com/AveYo/fox/blob/main/Natural%20Smooth%20Scrolling%20for%20user.js
// largely matches Chrome flags: Windows Scrolling Personality and Smooth Scrolling
// recommended for 120hz+ displays
// user_pref("general.smoothScroll",                                       true); // DEFAULT
// user_pref("general.smoothScroll.msdPhysics.continuousMotionMaxDeltaMS", 12);
// user_pref("general.smoothScroll.msdPhysics.enabled",                    true);
// user_pref("general.smoothScroll.msdPhysics.motionBeginSpringConstant",  600);
// user_pref("general.smoothScroll.msdPhysics.regularSpringConstant",      650);
// user_pref("general.smoothScroll.msdPhysics.slowdownMinDeltaMS",         25);
// user_pref("general.smoothScroll.msdPhysics.slowdownMinDeltaRatio",      2.0);
// user_pref("general.smoothScroll.msdPhysics.slowdownSpringConstant",     250);
// user_pref("general.smoothScroll.currentVelocityWeighting",              1.0);
// user_pref("general.smoothScroll.stopDecelerationWeighting",             1.0);
// user_pref("mousewheel.default.delta_multiplier_y",                      280);

/****************************************************************************
 * START: MY OVERRIDES                                                      *
****************************************************************************/
// Enter your personal prefs below this line:

// PREF: restore Firefox accounts
user_pref("identity.fxaccounts.enabled", true);

/****************************************************************************
 * END: BETTERFOX                                                           *
****************************************************************************/
