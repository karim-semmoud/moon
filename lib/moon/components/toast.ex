defmodule Moon.Components.Toast do
  use Moon.StatelessComponent
  alias Moon.Components.Link
  alias Moon.Assets.Icons.IconBannerInfo
  alias Moon.Assets.Icons.IconError
  alias Moon.Assets.Icons.IconErrorCircle
  alias Moon.Assets.Icons.IconSnackbarSuccess
  alias Moon.Assets.Icons.IconWarning

  prop id, :string, required: true
  prop message, :string, required: true
  prop variant, :string, values: ~w(error warning info success)
  prop closeable, :boolean, default: true
  prop link_text, :string
  prop link_href, :string
  prop on_close, :event

  defmodule Message do
    defstruct id: nil, message: nil, variant: nil, closeable: true, link_text: nil, link_href: nil
  end

  def render(assigns) do
    ~H"""
    {{ asset_import @socket, "js/tailwind" }}

    <div id={{ @id }} class="inline-flex items-center bg-gohan-100 rounded-lg shadow-xl pointer-events-auto p-4 mb-4">
      <div :if={{ @variant }} class="flex-shrink-0 mr-3">
        <IconError
          :if={{ @variant == "error" }}
          class="block w-5 h-5"
          font_size="1.25rem"
        />

        <IconWarning
          :if={{ @variant == "warning" }}
          class="block w-5 h-5"
          font_size="1.25rem"
        />

        <IconBannerInfo
          :if={{ @variant == "info" }}
          class="block w-5 h-5"
          font_size="1.25rem"
        />

        <IconSnackbarSuccess
          :if={{ @variant == "success" }}
          class="block w-5 h-5"
          font_size="1.25rem"
        />
      </div>

      <div class="flex justify-between flex-1 text-sm">
        <p class="flex-1 text-gray-900">
          {{ @message }}
        </p>
        <Link
          :if={{ @link_href && @link_text }}
          class="ml-4 flex-shrink-0 font-medium"
          to={{ @link_href }}
        >
          {{ @link_text }}
        </Link>
      </div>

      <div :if={{ @closeable }} class="flex flex-shrink-0 ml-4">
        <button
          class="inline-flex rounded-md hover:text-gray-500 focus:outline-none"
          :on-click={{ @on_close }}
          phx-value-id={{ @id }}
        >
          <span class="sr-only">Close</span>
          <IconErrorCircle
            class="w-5 h-5"
            font_size="1.25rem"
            color="trunks-100"
          />
        </button>
      </div>
    </div>
    """
  end
end