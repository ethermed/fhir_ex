defmodule Fhir.ContractContentDefinition do
  @moduledoc """
  Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:copyright, :string)
    field(:id, :string)
    field(:publicationDate, :string)
    field(:publicationStatus, :string)
    embeds_one(:_copyright, Fhir.Element)
    embeds_one(:_publicationDate, Fhir.Element)
    embeds_one(:_publicationStatus, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:publisher, Fhir.Reference)
    embeds_one(:subType, Fhir.CodeableConcept)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          copyright: String.t(),
          id: String.t(),
          publicationDate: String.t(),
          publicationStatus: String.t(),
          _copyright: Fhir.Element.t(),
          _publicationDate: Fhir.Element.t(),
          _publicationStatus: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          publisher: Fhir.Reference.t(),
          subType: Fhir.CodeableConcept.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:copyright, :id, :publicationDate, :publicationStatus])
    |> cast_embed(:_copyright, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_publicationDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_publicationStatus, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:publisher, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:subType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:copyright, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :publicationDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:publicationStatus, ~r/^[^\s]+( [^\s]+)*$/)
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
