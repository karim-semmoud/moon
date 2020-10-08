defmodule Moon.Assets.Icons.IconCircle do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconCircle-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 20 20" version="1.1" xmlns="http://www.w3.org/2000/svg" >   <!-- Generator: Sketch 53 (72520) - https://sketchapp.com -->   <title>icon-circle</title>   <desc>Created with Sketch.</desc>   <g id="Icons" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">     <g id="Circle" fill="currentColor">       <circle id="icon-circle" cx="10" cy="10" r="10"></circle>     </g>   </g> </svg>
    """
  end
end