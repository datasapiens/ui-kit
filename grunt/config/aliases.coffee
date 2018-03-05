##
# Custom tasks.
#

module.exports = (grunt) ->

    default: [
        'watch'
    ]

    dist: [
        'clean:dist'
        'clean:preprocess'
        'copy:preprocess'
        'replace:preprocess'
        'copy:dist'
    ]

    changelog: [
        'prompt:changelog'
        'conventionalChangelog'
    ]

    release: [
        'prompt:bump'
        'shell:bump'
        'changelog'
        'shell:commit'
    ]

    test: [
        'copy:preprocess'
        'replace:preprocess'
        'sass:test'
        'clean:test'
    ]
