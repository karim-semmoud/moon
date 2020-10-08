defmodule Moon.Assets.Icons.IconGoogleAuth do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconGoogleAuth-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="auto" height="1em" viewBox="0 0 18 20" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M3.16787 16.9476L3.16786 16.9476L3.17152 16.9511C4.97041 18.6584 7.26274 19.5 10.0063 19.5C11.4144 19.5 12.7658 19.2937 14.0583 18.8795C16.4728 18.1056 17.5 15.6055 17.5 13.2752V13.1263C17.5 10.8077 15.6204 8.92818 13.3019 8.92818H10.9463C9.92871 8.92818 9.10377 9.75311 9.10377 10.7707C9.10377 11.7883 9.92871 12.6133 10.9463 12.6133H13.4811V12.9336C13.4811 14.1592 12.887 15.2302 11.8863 15.5127C11.2921 15.6804 10.666 15.7652 10.0063 15.7652C8.37008 15.7652 7.09333 15.2249 6.12545 14.1645C5.16304 13.0919 4.66981 11.7331 4.66981 10.0497C4.66981 8.27757 5.17448 6.9105 6.14179 5.89471C7.13339 4.85445 8.36747 4.33425 9.8805 4.33425C11.2373 4.33425 12.4177 4.67511 13.4388 5.34614C14.1988 5.84552 15.2838 5.9368 16.057 5.27154C16.8734 4.56917 17.0137 3.22648 16.0543 2.50312C15.3867 1.99978 14.6564 1.59259 13.8647 1.28151C12.5829 0.761307 11.2621 0.5 9.90566 0.5C7.09188 0.5 4.79037 1.38563 3.05481 3.18922L3.05481 3.18921L3.05302 3.19109C1.34222 4.98748 0.5 7.28826 0.5 10.0497C0.5 12.8948 1.37678 15.2129 3.16787 16.9476Z" stroke="currentColor"/> </svg>
    """
  end
end