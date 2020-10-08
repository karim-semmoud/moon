defmodule Moon.Assets.Icons.IconCurrencyCRC do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconCurrencyCRC-#{assigns[:color]}-#{assigns[:background_color]}")

    false

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;

        
        color: {{ @color }};
        background-color: {{ @background_color }};
        display: inline-block;
        overflow: hidden;
        

        
      }
    </style>

    <svg class={{ class_name }} width="auto" height="1em" viewBox="0 0 35 54" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M21.58 39.04C20.812 39.04 20.108 38.976 19.404 38.912L29.26 15.168L34.316 7.35998C33.868 7.03998 33.356 6.78398 32.908 6.46398L34.7 2.17598L30.796 0.703979L29.068 4.79998C28.172 4.47998 27.212 4.22398 26.316 4.03198L27.084 2.17598L23.18 0.703979L21.964 3.58398H21.58C7.49996 3.58398 0.459961 12.928 0.459961 26.304C0.459961 33.344 2.44396 38.656 5.77196 42.304L1.93196 51.584L5.83596 53.12L9.16396 45.184C9.93196 45.696 10.764 46.144 11.66 46.528L9.54796 51.584L13.452 53.12L15.628 47.872C17.548 48.32 19.532 48.512 21.58 48.512C26.764 48.512 31.308 46.976 34.572 44.672L28.812 37.056C26.956 38.336 24.332 39.04 21.58 39.04ZM13.324 35.136L22.54 13.12C23.436 13.184 24.46 13.376 25.42 13.632L15.5 37.376C14.604 36.8 13.9 36.032 13.324 35.136ZM11.34 26.304C11.34 18.688 13.772 14.912 17.804 13.568L11.468 28.8C11.404 28.032 11.34 27.2 11.34 26.304Z" fill="currentColor"/> </svg>
    """
  end
end