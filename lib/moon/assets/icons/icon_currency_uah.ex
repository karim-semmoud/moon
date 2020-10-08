defmodule Moon.Assets.Icons.IconCurrencyUAH do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconCurrencyUAH-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M15.6109 14.3553C14.0081 15.9026 12.1331 16.3897 10.6512 16.3897C8.50403 16.3897 7.59677 15.5587 7.59677 14.6418C7.59677 14.0688 7.89919 13.553 8.38306 13.1232H17.5766V10.8883H11.5282C12.6472 10.4298 13.7964 9.91404 14.8548 9.51289H17.5766V7.30659H15.6714C16.6694 6.73352 17.4859 5.81662 17.4859 4.44126C17.4859 2.00573 14.9153 0 10.8327 0C8.29234 0 5.63105 0.916906 3.5746 2.40688L5.96371 5.44413C7.47581 4.26934 9.07863 3.63897 10.621 3.63897C11.8609 3.63897 12.9194 4.04011 12.9194 5.18625C12.9194 6.01719 12.1935 6.73352 11.4677 7.30659H3V9.51289H9.59274C8.53427 9.94269 7.38508 10.4585 6.35685 10.8883H3V13.1232H4.93548C4.11895 13.6963 3.39315 14.5845 3.39315 15.9026C3.39315 18.1948 5.87298 20 10.1976 20C12.9496 20 15.7923 19.2837 18 17.3066L15.6109 14.3553Z" fill="currentColor"/> </svg>
    """
  end
end