defmodule MoonWeb.Components.ExampleAndCode do
  use MoonWeb, :stateless_component
  alias Moon.Components.Badge

  prop(class, :string)
  slot(example)
  slot(code)
  slot(state)

  def render(assigns) do
    ~H"""
    <div class="rounded-lg bg-hover p-4 {{ @class }}">
      <div class="grid grid-cols-2">
        <div>
          <slot name="example">
            Example not defined
          </slot>
        </div>
        <div>
          <slot name="code">
            Example code not defined
          </slot>
        </div>
      </div>
      <div class="p-4">
        <Badge class="bg-piccolo-100 mb-4 mt-8">State:</Badge>
        <pre class="text-xs" style="opacity: 0.5"><slot name="state" /></pre>
      </div>
    </div>
    """
  end
end
