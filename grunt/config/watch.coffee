##
# Run tasks whenever watched files are changed.
# @see https://www.npmjs.com/package/grunt-contrib-watch
#

module.exports = (grunt) ->

    dist:
        files: [
            '<%= path.source %>/sass/**/*.scss'
        ]
        tasks: [
            'copy:preprocess'
            'replace:preprocess'
            'copy:dist'
        ]
