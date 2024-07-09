defmodule Fhir.DocumentReferenceProfile do
  @moduledoc """
  A reference to a document of any kind for any purpose. While the term “document” implies a more narrow focus, for this resource this "document" encompasses *any* serialized object with a mime-type, it includes formal patient-centric documents (CDA), clinical notes, scanned paper, non-patient specific documents like policy text, as well as a photo, video, or audio recording acquired or used in healthcare.  The DocumentReference resource provides metadata about the document so that the document can be discovered and managed.  The actual content may be inline base64 encoded data or provided by direct reference.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:valueCanonical, :string)
    field(:valueUri, :string)
    embeds_one(:_valueCanonical, Fhir.Element)
    embeds_one(:_valueUri, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:valueCoding, Fhir.Coding)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          valueCanonical: String.t(),
          valueUri: String.t(),
          _valueCanonical: Fhir.Element.t(),
          _valueUri: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          valueCoding: Fhir.Coding.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :valueCanonical, :valueUri])
    |> cast_embed(:_valueCanonical, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:valueCoding, with: &Fhir.Coding.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
