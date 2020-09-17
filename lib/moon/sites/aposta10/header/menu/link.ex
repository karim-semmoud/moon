defmodule Moon.Sites.Aposta10.Header.Menu.Link do
  use Moon.StatelessComponent
  alias Moon.Sites.Aposta10.Config

  alias Moon.Components.Text

  property count, :integer

  def render(assigns) do
    ~H"""
    <style>
      .site-header-menu-link {
        padding-top: 10px;
        padding-bottom: 10px;
        position: relative;
      }
    </style>

    <div class="site-header-menu-link">
      <Text size=12><slot /></Text>
      <Text style="color: #38A174; position: absolute; right: 0px; top: 10px;" :if={{ @count }}>{{ @count }}</Text>
    </div>
    """
  end
end
