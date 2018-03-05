##
# Copy files and folders.
# @see https://www.npmjs.com/package/grunt-contrib-copy
#

module.exports = (grunt) ->

    dist:
        files: [
            {
                expand: true
                cwd: '<%= path.temp %>/sass'
                src: [
                    '**/*.scss'
                ]
                dest: '<%= path.dist %>/stylesheets/kit'
            }
        ]

    preprocess:
        files: [
            {
                expand: true
                cwd: '<%= path.source %>/sass'
                src: [
                    '**/*.scss'
                ]
                dest: '<%= path.temp %>/sass'
            }
        ]
