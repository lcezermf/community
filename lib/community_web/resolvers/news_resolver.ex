defmodule CommunityWeb.NewsResolver do
  alias Community.News

  def all_links(_root, _args, _info) do
    {:ok, News.list_links()}
  end

  def get_link(_root, %{id: id}, _info) do
    {:ok, News.get_link!(id)}
  rescue Ecto.NoResultsError ->
    {:error, "could not find link"}
  end

  def create_link(_root, args, _info) do
    # TODO: add detailed error message handling later
    case News.create_link(args) do
      {:ok, link} ->
        {:ok, link}

      _error ->
        {:error, "could not create link"}
    end
  end

  def delete_link(_root, %{id: id}, _info) do
    link = News.get_link!(id)

    case News.delete_link(link) do
      {:ok, link} ->
        {:ok, link}
      {:error, _changeset} ->
        {:error, "could not delete link"}
    end
  rescue Ecto.NoResultsError ->
    {:error, "could not find link"}
  end
end
