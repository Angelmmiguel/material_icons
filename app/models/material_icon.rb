#
# This class help the creation of material icons in the UI.
#
class MaterialIcon
  # To use content_tag
  include ActionView::Helpers::TagHelper

  #
  # Reset will set all variables to nil
  #
  def reset
    @icon, @rotation, @size, @html, @style, @css_class = [nil] * 6
    self
  end

  #
  # Define shape style methods
  #
  %w(outlined round sharp twotone).each do |shape_style|
    define_method(shape_style) do
      css_class(shape_style)
      self
    end
  end

  #
  # Define rotate methods
  #
  %w(r90 r180 r270 flip_horizontal flip_vertical).each do |rotation|
    define_method(rotation) do
      @rotation = " #{rotation.gsub('_', '-')}"
      self
    end
  end

  #
  # Define size methods
  #
  %w(md_18 md_24 md_36 md_48).each do |size|
    define_method(size) do
      @size = " #{size.gsub('_', '-')} "
      self
    end
  end

  #
  # Set the shape of the icon you want to use
  #
  # == Paremeters:
  # name::
  #    String or symbol with icon name
  #
  # == Returns:
  # MaterialIcon instance
  #
  def shape(name)
    @icon = name.to_s
    self
  end

  #
  # Add a CSS class to :i tag
  #
  # == Paremeters:
  # css_class::
  #    String with CSS classes
  #
  # == Returns:
  # MaterialIcon instance
  #
  def css_class(css_class = '')
    @css_class = " #{css_class}"
    self
  end

  #
  # Add CSS properties to :i tag
  #
  # == Paremeters:
  # style::
  #    String with CSS rules
  #
  # == Returns:
  # MaterialIcon instance
  #
  def style(css_style = '')
    @style = css_style
    self
  end

  #
  # Add HTML options to :i tag.
  #
  # == Paremeters:
  # html::
  #   Hash with options to add to :i tag. For example:
  #     { data: { id: 1 } }
  #
  # == Returns:
  # MaterialIcon instance
  #
  def html(html = {})
    @html = html
    self
  end

  #
  # Create the HTML code for the icon
  #
  # == Returns:
  # Safe string
  #
  def to_s
    # Sanitize html
    @html = @html.nil? || !@html.is_a?(Hash) ? {} : @html

    # Create the icon
    content_tag(:i, "#{@icon}",
                @html.merge(
                  style: @style,
                  class: "material-icons#{@size}#{@rotation}#{@css_class}"))
  end

  # Fix #13. Some Rails methods uses to_str instead of to_s. In this case, to_str is handled
  # by method_missing so it's returning the same instance and the method are failing
  alias_method :to_str, :to_s

  #
  # Some methods require to_ary to be defined. We return nil in this method to avoid this class
  # to be threated as an Array
  #
  # == Returns
  # Nil
  #
  def to_ary
    nil
  end
end
