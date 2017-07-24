defmodule HelloWorldEdeliver.PageControllerTest do
  use HelloWorldEdeliver.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to The Jungle!"
  end
end
