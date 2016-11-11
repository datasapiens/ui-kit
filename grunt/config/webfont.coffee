##
# Generate custom icon webfonts from SVG files.
# @see https://www.npmjs.com/package/grunt-webfont
#

module.exports = (grunt) ->

    icon:
        options:
            # codepoints:
            destHtml: '<%= path.source %>/tpl/partials'
            font: 'icon'
            fontFamilyName: 'Sapiens Icons'
            fontFilename: 'sapiensicons'
            hashes: false
            htmlDemoTemplate: 'grunt/webfont/templates/prototype.html'
            # ligatures: true
            stylesheet: 'scss'
            template: 'grunt/webfont/templates/webfont.css'
            types: [
                'woff2',
                'woff'
            ]
        src: '<%= path.source %>/svg/icons/*.svg'
        dest: '<%= path.source %>/woff'
        destCss: '<%= path.source %>/sass/components'
