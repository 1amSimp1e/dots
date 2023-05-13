// NAME: Nord Injector
// AUTHOR: Tetrax-10
// DESCRIPTION: Injects Nord's theme.js remotely

;(() => {
    function injectScript(src, id) {
        if (!document.body.classList.contains(id)) {
            const script = document.createElement("script")
            script.id = id
            script.type = "text/javascript"
            script.src = src
            document.body.appendChild(script)
            document.body.classList.add(id)
        }
    }

    injectScript("https://tetrax-10.github.io/Nord-Spotify/Nord/theme.js", "nord-remote-js")
})()
