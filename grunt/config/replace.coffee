##
# Replace text in files.
# @see https://www.npmjs.org/package/grunt-text-replace
#

module.exports = (grunt) ->

    # 1. Escape invalid chars in Sass selectors (`/`)
    # 2. Escape invalid sequence in Sass selectors (`--`)

    preprocess:
        src: [
            '<%= path.temp %>/sass/**/*.scss'
        ]
        overwrite: true
        replacements: [
            {
                from: /(\.[a-z-_]*)(\/)([a-z-_ ]*[\{|,])/g # 1
                to: '$1\\$2$3'
            }
            {
                from: /(\.)(-{2})(.*[\{|,;])/g             # 2
                to: '$1\\$2$3'
            }
        ]
