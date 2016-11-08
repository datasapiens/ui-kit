##
# Minify images.
# @see https://www.npmjs.com/package/grunt-contrib-imagemin
#

module.exports = (grunt) ->

    options:
        svgoPlugins: [
            { cleanupEnableBackground: false }
            { cleanupIDs: false }
            { removeViewBox: false }
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
