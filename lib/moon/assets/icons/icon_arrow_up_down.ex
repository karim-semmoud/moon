defmodule Moon.Assets.Icons.IconArrowUpDown do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconArrowUpDown-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="auto" height="1em" viewBox="0 0 10 20" version="1.1" xmlns="http://www.w3.org/2000/svg" >   <!-- Generator: Sketch 53 (72520) - https://sketchapp.com -->   <title>icon-arrow-up-down</title>   <desc>Created with Sketch.</desc>   <g id="Icons" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">     <g id="Arrow-Up-Down" transform="translate(-5.000000, 0.000000)" fill="currentColor">       <path d="M9.93436404,1.8785668 C10.1165308,2.05341258 10.1165308,2.33731777 9.93436404,2.51213526 C9.75228559,2.68712244 9.45693809,2.68712244 9.27483019,2.51213526 L8.25196386,1.52961062 L8.25196386,14.2998572 L7.31913568,14.2998572 L7.31913568,1.52958233 L6.29615157,2.51213526 C6.11407312,2.68712244 5.81872562,2.68712244 5.63664717,2.51213526 C5.54554906,2.42462752 5.5,2.30999635 5.5,2.19533689 C5.5,2.080734 5.54554906,1.96598969 5.63664717,1.8785668 L7.45581229,0.131240391 C7.63789074,-0.0437467972 7.9332088,-0.0437467972 8.11531669,0.131240391 L9.93436404,1.8785668 Z M14.3633749,18.1214332 L12.5443276,19.8687596 C12.3622197,20.0437468 12.0669016,20.0437468 11.8848232,19.8687596 L10.065658,18.1214332 C9.97455993,18.0340103 9.92901087,17.919266 9.92901087,17.8046631 C9.92901087,17.6900037 9.97455993,17.5753725 10.065658,17.4878647 C10.2477365,17.3128776 10.543084,17.3128776 10.7251624,17.4878647 L11.7481466,18.4704177 L11.7481466,5.70014283 L12.6809747,5.70014283 L12.6809747,18.4703894 L13.7038411,17.4878647 C13.885949,17.3128776 14.1812965,17.3128776 14.3633749,17.4878647 C14.5455417,17.6626822 14.5455417,17.9465874 14.3633749,18.1214332 Z" id="icon-arrow-up-down"></path>     </g>   </g> </svg>
    """
  end
end