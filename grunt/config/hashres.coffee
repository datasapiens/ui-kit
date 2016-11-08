##
# Hash assets and update its references.
# @see https://www.npmjs.com/package/grunt-hashres
#

module.exports = (grunt) ->

    options:
        fileNameFormat: '${name}.${ext}?v=${hash}'
        renameFiles: false

    dist:
        src: [
            '<%= path.dist %>/images/*.{png,webp}'
        ]
        dest: [
            '<%= path.dist %>/browserconfig.xml'
            '<%= path.dist %>/manifest.json'
        ]
