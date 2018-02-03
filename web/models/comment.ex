defmodule BlogElixirGirls.Comment do
  use BlogElixirGirls.Web, :model

  schema "comments" do
    field :name, :string
    field :content, :string
    belongs_to :post, BlogElixirGirls.Post, foreign_key: :post_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do

    struct
    |> cast(params, [:name, :content, :post_id])
    |> validate_required([:name, :content, :post_id])
  end
end
