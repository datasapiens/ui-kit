##
# Minify images.
# @see https://www.npmjs.com/package/grunt-contrib-imagemin
#

module.exports = (grunt) ->

    options:
        svgoPlugins: [
            { removeAttrs: { attrs: 'data-name' } }
            { removeTitle: true }
        ]

    dist:
        files: [
            {
                expand: true
                flatten: true
                src: [
                    '<%= path.source %>/svg/*.svg'
                    '<%= path.source %>/png/apple*.png'
                    '<%= path.source %>/png/launcher-icon@*.png'
                ]
                dest: '<%= path.dist %>/images'
            }
        ]
