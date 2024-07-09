defmodule Fhir.TestScriptAssert do
  @moduledoc """
  A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:validateProfileId, :string)
    field(:description, :string)
    field(:value, :string)
    field(:responseCode, :string)
    field(:headerField, :string)
    field(:operator, :string)
    field(:contentType, :string)
    field(:requestURL, :string)
    field(:compareToSourcePath, :string)
    field(:minimumId, :string)
    field(:compareToSourceExpression, :string)
    field(:path, :string)
    field(:navigationLinks, :boolean)
    field(:direction, :string)
    field(:sourceId, :string)
    field(:requestMethod, :string)
    field(:warningOnly, :boolean)
    field(:defaultManualCompletion, :string)
    field(:expression, :string)
    field(:response, :string)
    field(:stopTestOnFail, :boolean)
    field(:id, :string)
    field(:compareToSourceId, :string)
    field(:label, :string)
    field(:resource, :string)
    embeds_one(:_response, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:_warningOnly, Fhir.Element)
    embeds_one(:_headerField, Fhir.Element)
    embeds_one(:_compareToSourceExpression, Fhir.Element)
    embeds_one(:_compareToSourcePath, Fhir.Element)
    embeds_one(:_stopTestOnFail, Fhir.Element)
    embeds_one(:_navigationLinks, Fhir.Element)
    embeds_one(:_resource, Fhir.Element)
    embeds_one(:_path, Fhir.Element)
    embeds_one(:_sourceId, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_minimumId, Fhir.Element)
    embeds_one(:_contentType, Fhir.Element)
    embeds_one(:_direction, Fhir.Element)
    embeds_one(:_requestURL, Fhir.Element)
    embeds_one(:_defaultManualCompletion, Fhir.Element)
    embeds_one(:_validateProfileId, Fhir.Element)
    embeds_many(:requirement, Fhir.TestScriptRequirement)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_requestMethod, Fhir.Element)
    embeds_one(:_label, Fhir.Element)
    embeds_one(:_compareToSourceId, Fhir.Element)
    embeds_one(:_expression, Fhir.Element)
    embeds_one(:_responseCode, Fhir.Element)
    embeds_one(:_value, Fhir.Element)
    embeds_one(:_operator, Fhir.Element)
  end

  @type t :: %__MODULE__{
          validateProfileId: String.t(),
          description: String.t(),
          value: String.t(),
          responseCode: String.t(),
          headerField: String.t(),
          operator: String.t(),
          contentType: String.t(),
          requestURL: String.t(),
          compareToSourcePath: String.t(),
          minimumId: String.t(),
          compareToSourceExpression: String.t(),
          path: String.t(),
          navigationLinks: boolean(),
          direction: String.t(),
          sourceId: String.t(),
          requestMethod: String.t(),
          warningOnly: boolean(),
          defaultManualCompletion: String.t(),
          expression: String.t(),
          response: String.t(),
          stopTestOnFail: boolean(),
          id: String.t(),
          compareToSourceId: String.t(),
          label: String.t(),
          resource: String.t(),
          _response: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          _warningOnly: Fhir.Element.t(),
          _headerField: Fhir.Element.t(),
          _compareToSourceExpression: Fhir.Element.t(),
          _compareToSourcePath: Fhir.Element.t(),
          _stopTestOnFail: Fhir.Element.t(),
          _navigationLinks: Fhir.Element.t(),
          _resource: Fhir.Element.t(),
          _path: Fhir.Element.t(),
          _sourceId: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          _minimumId: Fhir.Element.t(),
          _contentType: Fhir.Element.t(),
          _direction: Fhir.Element.t(),
          _requestURL: Fhir.Element.t(),
          _defaultManualCompletion: Fhir.Element.t(),
          _validateProfileId: Fhir.Element.t(),
          requirement: [Fhir.TestScriptRequirement.t()],
          modifierExtension: [Fhir.Extension.t()],
          _requestMethod: Fhir.Element.t(),
          _label: Fhir.Element.t(),
          _compareToSourceId: Fhir.Element.t(),
          _expression: Fhir.Element.t(),
          _responseCode: Fhir.Element.t(),
          _value: Fhir.Element.t(),
          _operator: Fhir.Element.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :validateProfileId,
      :description,
      :value,
      :responseCode,
      :headerField,
      :operator,
      :contentType,
      :requestURL,
      :compareToSourcePath,
      :minimumId,
      :compareToSourceExpression,
      :path,
      :navigationLinks,
      :direction,
      :sourceId,
      :requestMethod,
      :warningOnly,
      :defaultManualCompletion,
      :expression,
      :response,
      :stopTestOnFail,
      :id,
      :compareToSourceId,
      :label,
      :resource
    ])
    |> cast_embed(:_response, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_warningOnly, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_headerField, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_compareToSourceExpression, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_compareToSourcePath, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_stopTestOnFail, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_navigationLinks, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_resource, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_path, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sourceId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_minimumId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_contentType, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_direction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_requestURL, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_defaultManualCompletion, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_validateProfileId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:requirement, with: &Fhir.TestScriptRequirement.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_requestMethod, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_label, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_compareToSourceId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_expression, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_responseCode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_value, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_operator, with: &Fhir.Element.changeset/2)
    |> validate_format(:validateProfileId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:value, ~r/^^[\s\S]+$$/)
    |> validate_format(:responseCode, ~r/^^[\s\S]+$$/)
    |> validate_format(:headerField, ~r/^^[\s\S]+$$/)
    |> validate_format(:operator, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:contentType, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:requestURL, ~r/^^[\s\S]+$$/)
    |> validate_format(:compareToSourcePath, ~r/^^[\s\S]+$$/)
    |> validate_format(:minimumId, ~r/^^[\s\S]+$$/)
    |> validate_format(:compareToSourceExpression, ~r/^^[\s\S]+$$/)
    |> validate_format(:path, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:navigationLinks, [true, false])
    |> validate_format(:direction, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:sourceId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:requestMethod, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_inclusion(:warningOnly, [true, false])
    |> validate_format(:defaultManualCompletion, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:expression, ~r/^^[\s\S]+$$/)
    |> validate_format(:response, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_inclusion(:stopTestOnFail, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:compareToSourceId, ~r/^^[\s\S]+$$/)
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
