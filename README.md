[![Gem Version](https://badge.fury.io/rb/material_icons.svg)](http://badge.fury.io/rb/material_icons) [![Build Status](https://travis-ci.org/Angelmmiguel/material_icons.svg?branch=master)](https://travis-ci.org/Angelmmiguel/material_icons) [![Code Climate](https://codeclimate.com/github/Angelmmiguel/material_icons/badges/gpa.svg)](https://codeclimate.com/github/Angelmmiguel/material_icons) [![Codacy Badge](https://api.codacy.com/project/badge/grade/5eb6d2d5a9d24ab98a1aed5835510e4f)](https://www.codacy.com/app/angelmm/material_icons) [![Coverage Status](https://coveralls.io/repos/Angelmmiguel/material_icons/badge.svg?branch=master&service=github)](https://coveralls.io/github/Angelmmiguel/material_icons?branch=master)

![Material Icons for Rails](https://raw.githubusercontent.com/Angelmmiguel/material_icons/master/material.png)

# Material Icons for Rails

[Google Material Icons](https://google.github.io/material-design-icons/) is a +900 set of icons based on Material Design guidelines. With this gem you can add it easily to your Rails projects.

## Google Material Icons v2.2.2

Google updates Material Icons to [v2.2.2](https://github.com/google/material-design-icons/releases/tag/2.2.2). It's include 41 new icons!

# Installation

To install the gem, add this line to your `Gemfile`:

	gem 'material_icons'

Then, execute `bundle install`.

# CSS

In your `app/assets/stylesheets/application.css` file you need to reference material icons CSS. There are two versions: ligature or unicode (See [Compatibility](#compatibility) section for more info).

Add this line at top of `application.css` to use ligature:

```css
/*
*= require material_icons
*/
```

**NOTE**: Depending on the comment style of `application.css`, you may need to add `//= require material_icons` instead of the previous line. See [Rails Asset Pipeline](http://guides.rubyonrails.org/asset_pipeline.html#manifest-files-and-directives) for more info.

These files provide multiple CSS classes to use in your views. Main classes are:

	.material-icons, .mi

Some CSS classes are provided too:

```
/* Size */
.md-18
.md-24
.md-36
.md-48

/* Color */
.md-dark
.md-light

/* Rotation */
.r90
.r180
.r270
.flip-horizontal
.flip-vertical
```

Don't forget to see material_icons.css.erb ;).

# Views

Google Material Icons uses a feature called ligatures. We can define the icon in the text of the HTML tag. Go to [Google Guide](https://google.github.io/material-design-icons/#using-the-icons-in-html) to get more info.

An example of icon is:

```html
<i class="material-icons">face</i>
<i class="material-icons md-36">face</i>
```

## Helpers

Material Icons provide two helpers to build the HTML code of icons. The methods are `material_icon` and `mi`. These helpers use cascade style to set the icon and options. Using same example:

```
<%= material_icon.face %>
# <i class="material-icons">face</i>

<%= material_icon.face.md_36 %>
# <i class="material-icons md-36">face</i>

# This is a special case because the icon name starts with a number. Only
# 3d_rotation has this trouble.
<%= material_icon.three_d_rotation.md_36 %>
# <i class="material-icons md-36">3d_rotation</i>

# Rotation and custom css class
<%= mi.face.r90.css_class('my_class') %>
# <i class="material-icons r90 my_class">face</i>
```

Allowed methods are:

```
# Rotation methods
r90
r180
r270
flip_horizontal
flip_vertical

# Size methods
md_18
md_24
md_36
md_48

# Add some classes to the icon
css_class('classes')

# Add style to the icon
style('margin-top: 5px;')

# Add some HTML attributes to an icon. This method receive a Hash
html({ data: { id: 1 } })
```

Remember this is a helper, you always can use HTML syntax ;).

# Slim templating engine

If you are using [Slim templating engine](http://slim-lang.com/) in your Rails application, use double equal `==` method to render icons or the content won't be marked as HTML safe. We are working on this issue, because we use `content_tag` and it sets the text as HTML safe (see [ActionView::Helpers::TagHelper line 146](https://github.com/rails/rails/blob/4-2-stable/actionview/lib/action_view/helpers/tag_helper.rb#L146)).

```
p.text
  == material_icon.search.md_18
```

Reference [#9](https://github.com/Angelmmiguel/material_icons/issues/9)

# Compatibility

Ligature feature requires a supported browser:

Browser | Version    
---- | ----
Google Chrome | >= 11        
Mozilla Firefox | >= 3.5     
Apple Safari | >= 5       
Microsoft IE | >= 10      
Opera | >= 15      
Apple MobileSafari | >= iOS 4.2
Android Browser | >= 3.0     

To increase compatibility you can use Unicode version of the library. To set Unicode icons, you need to change the line to load ligature CSS file on `app/assets/stylesheets/application.css` (`*= require material_icons`) to this line:

```css
/*
*= require material_icons_unicode
*/
```

**NOTE**: Depending on the comment style of `application.css`, you may need to add `//= require material_icons_unicode` instead of the previous line. See [Rails Asset Pipeline](http://guides.rubyonrails.org/asset_pipeline.html#manifest-files-and-directives) for more info.

Next, you need to specify the helper to use unicode because it uses ligatures by default. Create an initializer file on `config/initializers/material_icons.rb` and set this content:

```ruby
# Initialize material icons setup
MaterialIcons.setup do |config|
  config.unicode = true
end
```

The [Helpers](#helpers) has the same syntax.

Now, the text inside of HTML tag is the CSS class! CSS Icon classes use underscores.

```html
<i class="material-icons face"></i>
<i class="mi md-36 face"></i>
<i class="mi add_box"></i>
<i class="mi three_d_rotation"></i>
```

This version increase the size of the CSS file too. To see the difference, these are the size for uncompressed CSS files:

File | Size
---- | ----
material_icons.css.erb | 3  KB
material_icons_unicode.css.erb | 68 KB

# Tested on

Tested with [Travis CI](https://travis-ci.org/Angelmmiguel/material_icons).

Ruby versions:

* 2.3.1
* 2.2.2
* 2.1.2

Rails versions:

* 3.2
* 4.0
* 4.1
* 4.2
* master

# They are using Material icons for Rails :)

* [Materialup.com](http://www.materialup.com): a big community to share, discover and learn about Material Design.
* [Easy Bills](https://www.easybills.io): a free tool to manage your finances.
* [Notebook.ai](https://www.notebook.ai/): your digital notebook is here. Notebook.ai grows with your ideas and collaborates back with you.

# License

Google Material Icons are under [Apache License v2.0](http://www.apache.org/licenses/LICENSE-2.0). _We'd love attribution in your app's about screen, but [it's not required](https://github.com/google/material-design-icons#license)_.

Material Icons gem is released under the MIT license. Copyright [@Laux_es ;)](https://twitter.com/Laux_es)
