defmodule HelloWorldEdeliver.PageController do
  use HelloWorldEdeliver.Web, :controller

  def index(conn, _params) do
    IO.inspect(System.cmd("pwd", []))
    {rev, _} = System.cmd("git", ["rev-parse", "HEAD"])
    IO.puts(String.replace(rev, "\n", ""))
    render conn, "index.html"
  end

  def git_revision_hash(conn, _params) do
    {rev, _} = System.cmd("git", ["rev-parse", "HEAD"])
    text conn, String.replace(rev, "\n", "")
  end
end
