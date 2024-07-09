defmodule Fhir.TestScriptOperation do
  @moduledoc """
  A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:requestId, :string)
    field(:description, :string)
    field(:encodeRequestUrl, :boolean)
    field(:contentType, :string)
    field(:responseId, :string)
    field(:accept, :string)
    field(:sourceId, :string)
    field(:origin, :float)
    field(:destination, :float)
    field(:url, :string)
    field(:params, :string)
    field(:method, :string)
    field(:id, :string)
    field(:targetId, :string)
    field(:label, :string)
    field(:resource, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:_params, Fhir.Element)
    embeds_one(:_url, Fhir.Element)
    embeds_one(:_origin, Fhir.Element)
    embeds_one(:_resource, Fhir.Element)
    embeds_one(:_encodeRequestUrl, Fhir.Element)
    embeds_one(:_targetId, Fhir.Element)
    embeds_one(:_sourceId, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_destination, Fhir.Element)
    embeds_one(:_responseId, Fhir.Element)
    embeds_one(:_contentType, Fhir.Element)
    embeds_one(:_method, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_label, Fhir.Element)
    embeds_many(:requestHeader, Fhir.TestScriptRequestHeader)
    embeds_one(:type, Fhir.Coding)
    embeds_one(:_requestId, Fhir.Element)
    embeds_one(:_accept, Fhir.Element)
  end

  @type t :: %__MODULE__{
          requestId: String.t(),
          description: String.t(),
          encodeRequestUrl: boolean(),
          contentType: String.t(),
          responseId: String.t(),
          accept: String.t(),
          sourceId: String.t(),
          origin: float(),
          destination: float(),
          url: String.t(),
          params: String.t(),
          method: String.t(),
          id: String.t(),
          targetId: String.t(),
          label: String.t(),
          resource: String.t(),
          extension: [Fhir.Extension.t()],
          _params: Fhir.Element.t(),
          _url: Fhir.Element.t(),
          _origin: Fhir.Element.t(),
          _resource: Fhir.Element.t(),
          _encodeRequestUrl: Fhir.Element.t(),
          _targetId: Fhir.Element.t(),
          _sourceId: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          _destination: Fhir.Element.t(),
          _responseId: Fhir.Element.t(),
          _contentType: Fhir.Element.t(),
          _method: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          _label: Fhir.Element.t(),
          requestHeader: [Fhir.TestScriptRequestHeader.t()],
          type: Fhir.Coding.t(),
          _requestId: Fhir.Element.t(),
          _accept: Fhir.Element.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :requestId,
      :description,
      :encodeRequestUrl,
      :contentType,
      :responseId,
      :accept,
      :sourceId,
      :origin,
      :destination,
      :url,
      :params,
      :method,
      :id,
      :targetId,
      :label,
      :resource
    ])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_params, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_origin, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_resource, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_encodeRequestUrl, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_targetId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sourceId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_destination, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_responseId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_contentType, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_method, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_label, with: &Fhir.Element.changeset/2)
    |> cast_embed(:requestHeader, with: &Fhir.TestScriptRequestHeader.changeset/2)
    |> cast_embed(:type, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:_requestId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_accept, with: &Fhir.Element.changeset/2)
    |> validate_format(:requestId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:encodeRequestUrl, [true, false])
    |> validate_format(:contentType, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:responseId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:accept, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:sourceId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:origin, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:destination, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:url, ~r/^^[\s\S]+$$/)
    |> validate_format(:params, ~r/^^[\s\S]+$$/)
    |> validate_format(:method, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:targetId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:label, ~r/^^[\s\S]+$$/)
    |> validate_format(:resource, ~r/^\S*$/)
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
