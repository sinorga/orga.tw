defmodule OrgaWeb.PageController do
  use OrgaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
