[![Gem Version](https://badge.fury.io/rb/material_icons.svg)](http://badge.fury.io/rb/material_icons) [![Build Status](https://travis-ci.org/Angelmmiguel/material_icons.svg?branch=master)](https://travis-ci.org/Angelmmiguel/material_icons)

![Material Icons for Rails](https://raw.githubusercontent.com/Angelmmiguel/material_icons/master/material.png)

# Material Icons for Rails

[Google Material Icons](https://google.github.io/material-design-icons/) is a +750 set of icons based on Material Design guidelines. With this gem you can add it easily to your Rails projects.

# Installation

To install the gem, add this line to your `Gemfile`:

	gem 'material_icons'

Then, execute `bundle install`.

# CSS

In your `application.css.erb` file you need to reference material icons CSS. There are two versions: ligature or unicode (See [Compatibility](#compatibility) section for more info).

Add this line at top of `application.css.erb` to use ligature:

	//= require material_icons

These files provide multiple CSS classes to use in your views. Main classes are:

	.material-icons, .mi

Some CSS classes are provided too:

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

Don't forget to see material_icons.css.erb ;).

# Views

Google Material Icons uses a feature called ligatures. We can define the icon in the text of the HTML tag. Go to [Google Guide](https://google.github.io/material-design-icons/#using-the-icons-in-html) to get more info.

An example of icon is:
	
	<i class="material-icons">face</i>
	<i class="material-icons md-36">face</i>

## Helpers

Material Icons provide two helpers to build the HTML code of icons. The methods are `material_icon` and `mi`. These helpers use cascade style to set the icon and options. Using same example:

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

Allowed methods are:
	
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

Remember this is a helper, you always can use HTML syntax ;).

# Compatibility

Ligature feature requires a supported browser: 

	Google Chrome       >= 11
	Mozilla Firefox     >= 3.5
	Apple Safari        >= 5
	Microsoft IE        >= 10
	Opera               >= 15
	Apple MobileSafari  >= iOS 4.2
	Android Browser     >= 3.0

To increase compatibility you can use Unicode version of the library. To set Unicode icons, you need to change the line to load ligature CSS file on `application.css.erb` ~> `//= require material_icons` to this line:

	//= require material_icons_unicode

Next, you need to specify the helper to use unicode because it uses ligatures by default. Create an initializer file on `config/initializers/material_icon.rb` and set this content:
	
	# Initialize material icons setup
	MaterialIcons.setup do |config|
	  config.unicode = true
	end

The [Helpers](#helpers) has the same syntax.

Now, the text inside of HTML tag is the CSS class! CSS Icon classes use underscores.

	<i class="material-icons face"></i>
	<i class="mi md-36 face"></i>
	<i class="mi add_box"></i>
	<i class="mi three_d_rotation"></i>

This version increase the size of the CSS file too. To see the difference, these are the size for uncompressed CSS files:

	material_icons.css.erb            3  KB
	material_icons_unicode.css.erb    68 KB

# They are using Material icons for Rails :)

* [Materialup.com](http://www.materialup.com): a big community to share, discover and learn about Material Design. 

# License

Google Material Icons are under [Creative Common Attribution 4.0 International License (CC-BY 4.0)](http://creativecommons.org/licenses/by/4.0/). But attribution [is not required](https://github.com/google/material-design-icons#license).

Material Icons gem is released under the MIT license. Copyright [@Laux_es ;)](https://twitter.com/Laux_es)
