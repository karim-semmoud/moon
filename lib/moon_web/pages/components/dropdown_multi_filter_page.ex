defmodule MoonWeb.Pages.Components.DropdownMultiFilterPage do
  @moduledoc false

  use MoonWeb, :live_view

  alias Moon.Autolayouts.TopToDown
  alias Moon.Components.CodePreview
  alias Moon.Components.Heading
  alias Moon.Components.Link
  alias MoonWeb.Components.ExampleAndCode
  alias MoonWeb.Components.Page
  alias MoonWeb.Pages.ExamplePages.Shared.Filters.CountryFilter
  alias MoonWeb.Pages.ExamplePages.Shared.Filters.SiteFilter

  data breadcrumbs, :any,
    default: [
      %{
        to: "#",
        name: "Components"
      },
      %{
        to: "/components/dropdown_multi_filter",
        name: "DropdownMultiFilter"
      }
    ]

  data country_filter_values, :list, default: []
  data site_filter_values, :list, default: []

  def mount(params, _session, socket) do
    {:ok,
     assign(socket, theme_name: params["theme_name"] || "sportsbet-dark", active_page: __MODULE__)}
  end

  def handle_params(_params, uri, socket) do
    {:noreply, assign(socket, uri: uri)}
  end

  def render(assigns) do
    ~F"""
    <Page theme_name={@theme_name} active_page={@active_page} breadcrumbs={@breadcrumbs}>
      <TopToDown>
        <Heading size={56} class="mb-4">Dropdown multifilter</Heading>
        <Link to="https://www.figma.com/file/Ai0SGAAfoL0bXI88Zn0Eo3/MDS-UI-specs?node-id=1375%3A9769">
          Figma design
        </Link>
        <Link
          class="mb-4"
          to="https://github.com/coingaming/moon/blob/master/lib/moon_web/pages/components/dropdown_multi_filter.ex"
        >
          Sourcecode of this page
        </Link>

        <ExampleAndCode id="dropdown_multi_filter_1">
          <:example>
            <CountryFilter active_values={@country_filter_values} />
          </:example>
          <:code>
            <#CodePreview>
          <DropdownMultiFilter
            id={@name}
            all_items={all_items()}
            active_values={@active_values}
            :let={toggle_filter: toggle_filter, is_open: is_open}
          >
            <Chip
              on_click={toggle_filter}
              value="country"
              right_icon="icon_chevron_down_rounded"
              active={is_open or length(@active_values) > 0}
            >
              {"Country #{length(@active_values) |> Helpers.format_filter_count()}"}
            </Chip>
          </DropdownMultiFilter>
          </#CodePreview>
          </:code>
          <:state>@country_filter_valuess = {inspect(@country_filter_values)}</:state>
        </ExampleAndCode>

        <ExampleAndCode id="dropdown_multi_filter_2">
          <:example>
            <SiteFilter active_values={@site_filter_values} />
          </:example>
          <:code>
            <#CodePreview>
          <DropdownMultiFilter
            id={@name}
            all_items={all_items()}
            active_values={@active_values}
            disable_search={true}
            :let={toggle_filter: toggle_filter, is_open: is_open}
          >
            <Chip
              on_click={toggle_filter}
              value="site"
              right_icon="icon_chevron_down_rounded"
              active={is_open or length(@active_values) > 0}
            >
              {"Brands #{length(@active_values) |> Helpers.format_filter_count()}"}
            </Chip>
          </DropdownMultiFilter>
          </#CodePreview>
          </:code>
          <:state>@site_filter_valuess = {inspect(@site_filter_values)}</:state>
        </ExampleAndCode>
      </TopToDown>
    </Page>
    """
  end

  def handle_info({:filters, filter_event}, socket) do
    socket =
      case filter_event do
        {:apply_country_filter, values} -> socket |> assign(country_filter_values: values)
        {:apply_site_filter, values} -> socket |> assign(site_filter_values: values)
        _ -> socket
      end

    {:noreply, socket}
  end
end
