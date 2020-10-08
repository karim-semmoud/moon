defmodule Moon.Assets.Icons.IconSliders do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSliders-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="auto" height="1em" viewBox="0 0 26 28" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M5 1L5 12.083C2.16229 12.559 0 15.027 0 18C0 20.973 2.16229 23.441 5 23.917V27C5 27.5523 5.44772 28 6 28C6.55228 28 7 27.5523 7 27V23.917C9.83771 23.441 12 20.973 12 18C12 15.027 9.83771 12.559 7 12.083L7 1C7 0.447715 6.55228 0 6 0C5.44771 0 5 0.447715 5 1ZM6 14C3.79086 14 2 15.7909 2 18C2 20.2091 3.79086 22 6 22C8.20914 22 10 20.2091 10 18C10 15.7909 8.20914 14 6 14Z" fill="currentColor"/>  <path fill-rule="evenodd" clip-rule="evenodd" d="M21 15.917C23.8377 15.441 26 12.973 26 10C26 7.027 23.8377 4.55904 21 4.08296V1C21 0.447715 20.5523 0 20 0C19.4477 0 19 0.447715 19 1V4.08296C16.1623 4.55904 14 7.027 14 10C14 12.973 16.1623 15.441 19 15.917V27C19 27.5523 19.4477 28 20 28C20.5523 28 21 27.5523 21 27V15.917ZM16 10C16 7.79086 17.7909 6 20 6C22.2091 6 24 7.79086 24 10C24 12.2091 22.2091 14 20 14C17.7909 14 16 12.2091 16 10Z" fill="currentColor"/> </svg>
    """
  end
end