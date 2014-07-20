(($) ->
    $(window).on('load',  ->
        w = 0
        $li = $('#menu > li')
        $li.each ->
            cw = $(@).width()
            w += $(@).width()
            $(@).css
                'max-width' : cw
            return
        $('#menu').css
            'width': w
            'margin': '0 auto'
            'visibility': 'visible'
        return
    );
    return
) jQuery