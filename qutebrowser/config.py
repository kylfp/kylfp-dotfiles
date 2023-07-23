# Imports
from qutebrowser.api import interceptor

# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html
# CONFIGURATION FILE SOURCE

# CONFIGURATION FILE SOURCE
# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(False)

# COOKIES
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')

# Value to send in the `Accept-Language` header. Note that the value
# read from JavaScript is always the global value.
# Type: String
config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0', 'https://accounts.google.com/*')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')

# AUTOMATIC IMAGE LOADING
config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')

# Enable JavaScript.
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')

# ENABLE DARK MODE
config.set("colors.webpage.darkmode.enabled", False)

# PLAY YOUTUBE VIDEOS WITHOUT ADS
config.bind('<Space>yt', 'hint links spawn mpv {hint-url}')

# HOMEPAGE URL
# https://www.startpage.com/sp/search?query=%s
c.url.searchengines = {'DEFAULT': 'https://search.brave.com/search?q={}'}
c.url.start_pages = 'file:///home/fattyre/Desktop/StartPage/index.html'
c.url.default_page = 'file:///home/fattyre/Desktop/StartPage/index.html'

# YOUTUBE AD BLOCKING
def filter_yt(info: interceptor.Request):
    """Block the given request if necessary."""
    url = info.request_url
    if (
        url.host() == "www.youtube.com"
        and url.path() == "/get_video_info"
        and "&adformat=" in url.query()
    ):
        info.block()

interceptor.register(filter_yt)

#COLOR
# #1e1f2c -- generic background
# #181923
# #dee9ff -- generic text
# #9ece6a
# #9d7cd8
# #7aa2f7
# #e27d60

c.colors.statusbar.normal.bg = '#1e1f2c'
c.colors.statusbar.normal.fg = '#dee9ff'

c.colors.statusbar.insert.bg = '#9d7cd8'
c.colors.statusbar.insert.fg = '#181923'

c.colors.statusbar.caret.bg = '#7aa2f7'
c.colors.statusbar.caret.bg = '#181923'

c.colors.statusbar.command.bg = '#e27d60'
c.colors.statusbar.command.bg = '#181923'

c.colors.tabs.bar.bg = '#1e1f2c'


# color of selected even tabs.
c.colors.tabs.selected.even.bg = '#7aa2f7'
c.colors.tabs.selected.even.fg = '#181923'

## color of selected odd tabs.
c.colors.tabs.selected.odd.bg = '#7aa2f7'
c.colors.tabs.selected.odd.fg = '#181923'

## color of unselected even tabs.
c.colors.tabs.even.bg = '#181923'
c.colors.tabs.even.fg = '#dee9ff'

## color of unselected odd tabs.
c.colors.tabs.odd.bg = '#1e1f2c'
c.colors.tabs.odd.fg = '#dee9ff'

## Color gradient end for the tab indicator.
c.colors.tabs.indicator.stop = '#9ece6a'

## Color gradient start for the tab indicator.
c.colors.tabs.indicator.start = '#7aa2f7'

## Color for the tab indicator on errors.
## Type: QtColor
c.colors.tabs.indicator.error = '#e27d60'

c.tabs.padding = {'top': 3, 'bottom': 3, 'left': 5, 'right': 5}
c.statusbar.padding = {'top': 3, 'bottom': 3, 'left': 0, 'right': 0}

c.fonts.default_size = '12pt'
