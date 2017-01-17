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
                    dest: '<%= path.source %>/data/sapiensicons.json'
                }
            ]
            font: 'icon'
            fontFamilyName: 'Sapiens Icons'
            fontFilename: 'sapiensicons'
            # fontHeight: 24
            hashes: false
            htmlDemo: false
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
