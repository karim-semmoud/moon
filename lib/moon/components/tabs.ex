defmodule Moon.Components.Tabs do
  use Moon.StatelessComponent
  alias Moon.Components.Reel

  slot(default)

  def render(assigns) do
    ~H"""
    {{ asset_import @socket, "js/tailwind" }}

    <div class="border-b border-goku-40">
      <Reel>
        <slot />
      </Reel>
    </div>
    """
  end
end

defmodule Moon.Components.Tabs.TabLink do
  use Moon.StatelessComponent
  alias Surface.Components.Link

  prop(active, :boolean, default: false)
  prop(to, :any)
  prop(on_click, :event)
  prop(item_id, :string)
  slot(default)

  def render(assigns) do
    ~H"""
    <Link to={{ @to }} class="inline-block p-1 text-center mr-5 {{ @active && "border-b-2 border-piccolo-120" }}" :if={{ @to }}>
      <slot />
    </Link>

    <div :on-click={{ @on_click }} phx-value-item_id={{ @item_id }} class="inline-block p-1 text-center mr-5 {{ @active && "border-b-2 border-piccolo-120" }}" :if={{ !@to }}>
      <slot />
    </div>
    """
  end
end
