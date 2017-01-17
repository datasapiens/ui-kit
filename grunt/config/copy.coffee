##
# Copy files and folders.
# @see https://www.npmjs.com/package/grunt-contrib-copy
#

module.exports = (grunt) ->

    dist:
        files: [
            {
                expand: true
                flatten: true
                cwd: '<%= path.source %>/woff'
                src: [
                    '**/*.{woff,woff2}'
                ]
                dest: '<%= path.dist %>/fonts'
            }
            {
                expand: true
                cwd: '<%= path.source %>/data'
                src: [
                    '**/*.json'
                ]
                dest: '<%= path.dist %>/data'
            }
            {
                expand: true
                cwd: '<%= path.source %>'
                src: [
                    'browserconfig.xml'
                    'favicon.ico'
                    'manifest.json'
                    'robots.txt'
                ]
                dest: '<%= path.dist %>'
            }
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
