defmodule PensieveWeb.MemoryHTML do
  use PensieveWeb, :html

  embed_templates "/memory_html/*"

  def information(assigns) do
    ~H"""
    <div class="italic mb-4">
      There are {length(@memories)} memories in your pensieve
    </div>
    """
  end
end
