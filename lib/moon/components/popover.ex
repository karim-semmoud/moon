defmodule Moon.Components.Popover do
  use Moon.StatelessComponent

  slot(default)
  prop class, :css_class
  prop placement, :string, values: ["under"]
  prop close, :event

  def render(assigns) do
    ~H"""
    {{ asset_import @socket, "js/tailwind" }}

    <div class="fixed top-0 left-0 right-0 bottom-0 bg-gohan-100 z-30" style="opacity: 0;" :on-click={{ @close }}>
    </div>

    <div class="p-4 bg-gohan-100 shadow rounded absolute w-full mt-4 {{ @class }} z-40">
      <slot />
    </div>
    """
  end
end