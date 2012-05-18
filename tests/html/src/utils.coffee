protocols = ['websocket',
        'xdr-streaming',
        'xhr-streaming',
        'iframe-eventsource',
        'iframe-htmlfile',
        'xdr-polling',
        'xhr-polling',
        'iframe-xhr-polling',
        'jsonp-polling']

newSockJS = (path, protocol) ->
    url = if /^http/.test(path) then path else client_opts.url + path
    options = jQuery.extend({}, client_opts.sockjs_opts)
    if protocol
        options.protocols_whitelist = [protocol]
    return new SockJS(url, null, options)
