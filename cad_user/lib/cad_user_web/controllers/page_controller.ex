defmodule CadUserWeb.PageController do
  use CadUserWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
