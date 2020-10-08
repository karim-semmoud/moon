defmodule Moon.Assets.Icons.IconDuotoneArrows do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  false

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconDuotoneArrows-#{assigns[:color]}-#{assigns[:background_color]}")

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

    <svg class={{ class_name }} width="auto" height="1em" viewBox="0 0 17 20" fill="none" xmlns="http://www.w3.org/2000/svg"> <g id="icon-duotone-arrows"> <path id="Shadow" d="M11.7832 3.94667H9.36868C8.8395 3.94667 8.41035 3.51751 8.41035 2.98833C8.41035 2.45916 8.8395 2.03 9.36868 2.03H14.035C14.1655 2.03 14.2882 2.05702 14.3981 2.10168L14.4038 2.104C14.6356 2.20093 14.823 2.38614 14.9205 2.62279C14.967 2.73504 14.9939 2.85969 14.9934 2.99043V7.65501C14.9934 8.18337 14.5653 8.61334 14.0354 8.61334C13.5054 8.61334 13.077 8.18377 13.077 7.65501V5.36791L1.64901 17.4987L1.63603 17.5121C1.44938 17.6988 1.20313 17.7928 0.958417 17.7928C0.713701 17.7928 0.467453 17.6988 0.280808 17.5121C-0.0908602 17.1404 -0.0935827 16.5402 0.272641 16.1652L11.7832 3.94667Z" fill="white" fill-opacity="0.1"/> <path id="Arrows" fill-rule="evenodd" clip-rule="evenodd" d="M16.4455 0.333667C16.4459 0.29 16.4369 0.246667 16.4199 0.206C16.3862 0.124333 16.3212 0.0596667 16.2399 0.0256667C16.1989 0.00900001 16.1559 0 16.1122 0H11.4459C11.2619 0 11.1125 0.149334 11.1125 0.333334C11.1125 0.517334 11.2619 0.666667 11.4459 0.666667H15.3079L5.87687 10.0977C5.74654 10.228 5.74654 10.4387 5.87687 10.569C5.94187 10.634 6.0272 10.6667 6.11254 10.6667C6.19787 10.6667 6.2832 10.634 6.3482 10.569L15.7792 1.138V5.00001C15.7792 5.18401 15.9282 5.33334 16.1125 5.33334C16.2965 5.33334 16.4455 5.18401 16.4455 5.00001V0.333667ZM12.3482 9.90232C12.4786 9.77199 12.4786 9.56132 12.3482 9.43099C12.2179 9.30066 12.0069 9.30066 11.8769 9.43099L2.44589 18.862V15C2.44589 14.816 2.29655 14.6667 2.11255 14.6667C1.92855 14.6667 1.77922 14.816 1.77922 15V19.6667C1.77922 19.6677 1.77947 19.6686 1.77972 19.6695C1.77997 19.6704 1.78022 19.6713 1.78022 19.6723C1.78089 19.7137 1.78889 19.755 1.80489 19.794C1.83889 19.8757 1.90355 19.9403 1.98522 19.9743C2.02589 19.991 2.06922 20 2.11255 20H6.77923C6.96323 20 7.11256 19.8507 7.11256 19.6667C7.11256 19.4827 6.96323 19.3333 6.77923 19.3333H2.91722L12.3482 9.90232Z" fill="#8697A2"/> </g> </svg>
    """
  end
end