##
# Generate custom icon webfonts from SVG files.
# @see https://www.npmjs.com/package/grunt-webfont
#

module.exports = (grunt) ->

    icon:
        options:
            # codepoints:
            customOutputs: [
                {
                    template: 'grunt/webfont/templates/data.json'
                    dest: '<%= path.source %>/data/kit-icons.json'
                }
            ]
            destHtml: '<%= path.temp %>'
            font: 'icon'
            fontFamilyName: 'UI Kit Icons'
            fontFilename: 'kit-icons'
            # fontHeight: 24
            hashes: false
            # ligatures: true
            # optimize: false
            stylesheet: 'scss'
            template: 'grunt/webfont/templates/settings.scss'
            templateOptions:
                "baseClass": ""
                "classPrefix": "ico"
                "mixinPrefix": ""
            types: [
                'woff'
                'woff2',
            ]
        src: '<%= path.source %>/svg/icons/*.svg'
        dest: '<%= path.source %>/woff'
        destCss: '<%= path.source %>/sass/settings'
