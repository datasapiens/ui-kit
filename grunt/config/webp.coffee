##
# Convert images to WebP.
# @see https://www.npmjs.com/package/grunt-webp
#

module.exports = (grunt) ->

    options:
        lossless: true
        preset: 'photo'
        verbose: false

    dist:
        options:
            lossless: false
            preset: 'icon'

        files: [
            {
                expand: true
                flatten: true
                src: [
                    '<%= path.source %>/png/launcher-icon@*.png'
                ]
                dest: '<%= path.dist %>/images'
            }
        ]
