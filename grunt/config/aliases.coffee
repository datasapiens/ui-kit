##
# Custom tasks.
#

module.exports = (grunt) ->

    default: [
        'watch'
    ]

    dist: [
        # 'test'
        # 'shell:install'
        'clean:dist'
        'clean:preprocess'
        'copy:preprocess'
        'replace:preprocess'
        'copy:dist'
        'images'
        'hashres:dist'
    ]

    fonts: [
        'imagemin:icon'
        'webfont'
    ]

    changelog: [
        'prompt:changelog'
        'conventionalChangelog'
    ]

    images: [
        'imagemin:dist'
        'cwebp'
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
