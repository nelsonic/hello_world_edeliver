defmodule HelloWorldEdeliver.PageController do
  use HelloWorldEdeliver.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def git_revision_hash(conn, _params) do
    IO.inspect(System.cmd("pwd", []))
    {ls, _} = IO.inspect(System.cmd("ls", ["-a"]))
    ls = String.split(ls, "\n")
    IO.inspect ls

    unless Enum.member?(String.split(System.cmd("ls", ["-a"]), "\n"), ".git") do
      File.cd("./builds")
      IO.inspect(System.cmd("pwd", []))
    end

    {rev, _} = System.cmd("git", ["rev-parse", "HEAD"])
    IO.puts(String.replace(rev, "\n", ""))
    text conn, String.replace(rev, "\n", "")
  end
end
