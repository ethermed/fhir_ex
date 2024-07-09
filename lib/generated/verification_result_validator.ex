defmodule Fhir.VerificationResultValidator do
  @moduledoc """
  Describes validation requirements, source(s), status and dates for one or more elements.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:identityCertificate, :string)
    embeds_one(:_identityCertificate, Fhir.Element)
    embeds_one(:attestationSignature, Fhir.Signature)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:organization, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          identityCertificate: String.t(),
          _identityCertificate: Fhir.Element.t(),
          attestationSignature: Fhir.Signature.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          organization: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :identityCertificate])
    |> cast_embed(:_identityCertificate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:attestationSignature, with: &Fhir.Signature.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:organization, with: &Fhir.Reference.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:identityCertificate, ~r/^^[\s\S]+$$/)
  end

  def new(params) do
    %__MODULE__{}
    |> changeset(params)
    |> apply_action(:new)
  end

  def new!(params) do
    case new(params) do
      {:ok, val} -> val
      {:error, cs} -> raise "Invalid #{__ENV__.module}.new!(): #{inspect(cs.errors)}"
    end
  end
end
