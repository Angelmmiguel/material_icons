#
# This class help the creation of material icons in the UI.
#
class MaterialIcon
  # To use content_tag
  include ActionView::Helpers::TagHelper

  # Undefined method will ref to the icon.
  def method_missing(name)
    @icon = clear_icon(name)
    self
  end

  #
  # Reset will set all variables to nil
  #
  def reset
    @icon, @rotation, @size, @html, @style, @css_class = [nil] * 6
    self
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
  def style(style = '')
    @style = style
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
  # Check based on rails config if the selected mode is unicode
  #
  def unicode?
    MaterialIcons.unicode
  end

  #
  # Create the HTML code for the icon. This method check if selected mode is
  # unicode or ligatures.
  #
  # == Returns:
  # Safe string
  #
  def to_s
    # Sanitize html
    @html = @html.nil? || !@html.is_a?(Hash) ? {} : @html

    # Create the icon
    if unicode?
      content_tag(:i, '',
                  @html.merge(
                    style: @style,
                    class: "mi #{@icon}#{@size}#{@rotation}#{@css_class}"))
    else
      content_tag(:i, "#{@icon}",
                  @html.merge(
                    style: @style,
                    class: "mi#{@size}#{@rotation}#{@css_class}"))
    end
  end

  private

  #
  # Convert icon names that start with a number to the correct format. On
  # Material Design Icons version 2.0.0, unique conflict is the 3d-rotation
  # icon
  #
  # == Parameters:
  # icon:
  #   String with the name of the icon
  #
  # == Returns:
  # An string with filtered name of the icon
  #
  def clear_icon(icon)
    return icon if unicode? || icon != :three_d_rotation
    '3d_rotation'
  end
end
