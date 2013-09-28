Alfred 2 Hipchat Emoticons Workflow
===================================

Install
-------

Download the [Hipchat Emoticons.workflow](https://github.com/aortbals/alfred2-hipchat-emoticons-workflow/raw/master/Hipchat%20Emoticons.alfredworkflow) and add it to your Alfred 2 workflows.

Usage
-----

![Hipchat Usage](https://raw.github.com/aortbals/alfred2-hipchat-emoticons-workflow/master/screenshots/usage.png)

The default keyword is **`hip`** + a search query. Enter will copy the shortcut to your clipboard and paste into the front most app.

Hit `ctrl` + enter at any point to launch the [online directory](http://hipchat-emoticons.nyh.name/) provided by [henrik](https://github.com/henrik/hipchat-emoticons).


For Developers
--------------

Clone this repo. Alfred workflows run under system ruby, so switch to system ruby if you are using rbenv (this repo contains a `.ruby-version` file) or rvm. You might need to `sudo gem install bundler`.

    sudo gem install plist
    rake bundle:install
    rake install (or rake dbxinstall for dropbox support)

#### Downloading/Updating the Emoticons ####

From the workflow directory:

    rake


Credits
-------

- [Hipchat Emoticons on Github](https://github.com/henrik/hipchat-emoticons)
- [Alfred 2 Workflow Ruby Template on Github](https://github.com/zhaocai/alfred2-ruby-template)
- [Alfred 2 Font Awesome Workflow](https://github.com/ruedap/alfred2-font-awesome-workflow) as a great reference for building ruby-based workflows
