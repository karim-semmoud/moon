defmodule Moon.Assets.Logos.LogoLabFull do
  use Moon.StatelessComponent

  prop color, :string, values: Moon.colors()
  prop height, :string
  prop width, :string
  prop font_size, :string
  prop vertical_align, :string
  prop click, :event
  prop class, :string

  def render(assigns) do
    ~F"""
    {asset_import @socket, "js/assets/logo"}

    <svg class={"moon-logo #{@class}"} :on-click={@click} style={get_style(color: @color, height: @height, width: @width, font_size: @font_size, vertical_align: @vertical_align)}>
      <use href="/moon/svgs/logos/logo-lab-full.svg#item"></use>
    </svg>

    """
  end
end