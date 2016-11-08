[contributing]:  CONTRIBUTING.md
[changelog]:     CHANGELOG.md
<!-- [styleguide]:     -->



# UI Kit


__UI Kit is Sass components and static assets library.__

![node](http://img.shields.io/badge/node-10.0.x-7FC100.svg?style=flat-square)
![grunt](http://img.shields.io/badge/grunt-1.0.x-E38800.svg?style=flat-square)
![libsass](http://img.shields.io/badge/libsass-3.3.x-C44C8D.svg?style=flat-square)


### Table of Contents

* [Requirements](#requirements)
* [Quick Start](#quick-start)
* [Usage](#usage)
* [Documentation](#documentation)
* [Recipes (FAQ)](#recipes-faq)
* [Troubleshooting](#troubleshooting)
* [Contributing](#contributing)
* [History](#history)

------


## Requirements

1. [Git](http://git-scm.com/downloads)    
1. [Node](https://nodejs.org/en/download/) `10.0.x`    
1. [Grunt CLI](http://gruntjs.com/getting-started)  

    ```
    npm install -g grunt-cli
    ```


## Quick Start

1. Clone repo  

    ```
    https://github.com/datasapiens/ui-kit.git
    ```
1. Install dependencies  

    ```
    npm install
    ```
1. Generate distribution  

    ```
    npm start
    ```


## Usage

You can find all available tasks in [grunt/config/alias.coffee](grunt/config/aliases.coffee) or by running `grunt --help`.

| task            | description                                                                                              |
| --------------- | -------------------------------------------------------------------------------------------------------- |
| __dist__        | Generate `dist`                                                                                          |
| __fonts__       | Generate icon webfont from SVG files                                                                     |
| __images__      | Optimize images and copy them to `dist`                                                                  |
| __release__     | Generate [CHANGELOG][changelog] from Git commits, bump version and commit/tag/push it to repository      |
| __test__        | Run dummy test to hunt down Sass components compilation error(s)                                         |
| __watch__       | Watch source for changes and rebuild on change                                                           |


## Documentation

There's a living Styleguide aka [UI Styleguide][styleguide].

It's also recommended to check out the [project Wiki](wikis/home).


## Recipes (FAQ)

* [How to release new version](wikis/how-to-release-new-version)
* [How to extend icon webfont](wikis/how-to-extend-icon-webfont)
* [How to process webfont](wikis/how-to-process-webfont)



## Troubleshooting

* [Locking down package's dependencies](wikis/locking-down-packages-dependencies)



## Contributing

See project [CONTRIBUTING][contributing] guide.



## History

See project [CHANGELOG][changelog] to discover version changes.
