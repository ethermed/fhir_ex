defmodule Fhir.SearchParameter do
  @moduledoc """
  A search parameter that defines a named search item that can be used to search/filter on a resource.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:chain, :string)
    field(:versionAlgorithmString, :string)
    field(:name, :string)
    field(:date, :string)
    field(:experimental, :boolean)
    field(:copyright, :string)
    field(:modifier, :string)
    field(:description, :string)
    field(:derivedFrom, :string)
    field(:target, :string)
    field(:base, :string)
    field(:constraint, :string)
    field(:purpose, :string)
    field(:multipleOr, :boolean)
    field(:processingMode, :string)
    field(:version, :string)
    field(:code, :string)
    field(:language, :string)
    field(:comparator, :string)
    field(:multipleAnd, :boolean)
    field(:resourceType, :string, default: "SearchParameter")
    field(:copyrightLabel, :string)
    field(:url, :string)
    field(:expression, :string)
    field(:type, :string)
    field(:implicitRules, :string)
    field(:status, :string)
    field(:id, :string)
    field(:title, :string)
    field(:publisher, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_many(:_modifier, Fhir.Element)
    embeds_many(:_target, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:_title, Fhir.Element)
    embeds_one(:versionAlgorithmCoding, Fhir.Coding)
    embeds_one(:_url, Fhir.Element)
    embeds_one(:_purpose, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_copyrightLabel, Fhir.Element)
    embeds_many(:_base, Fhir.Element)
    embeds_one(:_multipleOr, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_processingMode, Fhir.Element)
    embeds_one(:_experimental, Fhir.Element)
    embeds_one(:_code, Fhir.Element)
    embeds_many(:component, Fhir.SearchParameterComponent)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_multipleAnd, Fhir.Element)
    embeds_many(:_comparator, Fhir.Element)
    embeds_many(:contact, Fhir.ContactDetail)
    embeds_one(:_publisher, Fhir.Element)
    embeds_many(:_chain, Fhir.Element)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:_version, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:useContext, Fhir.UsageContext)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:_copyright, Fhir.Element)
    embeds_one(:_versionAlgorithmString, Fhir.Element)
    embeds_one(:_expression, Fhir.Element)
    embeds_one(:_constraint, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:jurisdiction, Fhir.CodeableConcept)
    embeds_one(:_type, Fhir.Element)
  end

  @type t :: %__MODULE__{
          chain: String.t(),
          versionAlgorithmString: String.t(),
          name: String.t(),
          date: String.t(),
          experimental: boolean(),
          copyright: String.t(),
          modifier: String.t(),
          description: String.t(),
          derivedFrom: String.t(),
          target: String.t(),
          base: String.t(),
          constraint: String.t(),
          purpose: String.t(),
          multipleOr: boolean(),
          processingMode: String.t(),
          version: String.t(),
          code: String.t(),
          language: String.t(),
          comparator: String.t(),
          multipleAnd: boolean(),
          resourceType: String.t(),
          copyrightLabel: String.t(),
          url: String.t(),
          expression: String.t(),
          type: String.t(),
          implicitRules: String.t(),
          status: String.t(),
          id: String.t(),
          title: String.t(),
          publisher: String.t(),
          _date: Fhir.Element.t(),
          _modifier: [Fhir.Element.t()],
          _target: [Fhir.Element.t()],
          _status: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          contained: [Fhir.ResourceList.t()],
          _title: Fhir.Element.t(),
          versionAlgorithmCoding: Fhir.Coding.t(),
          _url: Fhir.Element.t(),
          _purpose: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _copyrightLabel: Fhir.Element.t(),
          _base: [Fhir.Element.t()],
          _multipleOr: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _processingMode: Fhir.Element.t(),
          _experimental: Fhir.Element.t(),
          _code: Fhir.Element.t(),
          component: [Fhir.SearchParameterComponent.t()],
          _description: Fhir.Element.t(),
          _multipleAnd: Fhir.Element.t(),
          _comparator: [Fhir.Element.t()],
          contact: [Fhir.ContactDetail.t()],
          _publisher: Fhir.Element.t(),
          _chain: [Fhir.Element.t()],
          text: Fhir.Narrative.t(),
          _version: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          useContext: [Fhir.UsageContext.t()],
          meta: Fhir.Meta.t(),
          identifier: [Fhir.Identifier.t()],
          _copyright: Fhir.Element.t(),
          _versionAlgorithmString: Fhir.Element.t(),
          _expression: Fhir.Element.t(),
          _constraint: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          jurisdiction: [Fhir.CodeableConcept.t()],
          _type: Fhir.Element.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :chain,
      :versionAlgorithmString,
      :name,
      :date,
      :experimental,
      :copyright,
      :modifier,
      :description,
      :derivedFrom,
      :target,
      :base,
      :constraint,
      :purpose,
      :multipleOr,
      :processingMode,
      :version,
      :code,
      :language,
      :comparator,
      :multipleAnd,
      :resourceType,
      :copyrightLabel,
      :url,
      :expression,
      :type,
      :implicitRules,
      :status,
      :id,
      :title,
      :publisher
    ])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_modifier, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_target, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:versionAlgorithmCoding, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:_url, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_purpose, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_copyrightLabel, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_base, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_multipleOr, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_processingMode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_experimental, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:component, with: &Fhir.SearchParameterComponent.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_multipleAnd, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_comparator, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contact, with: &Fhir.ContactDetail.changeset/2)
    |> cast_embed(:_publisher, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_chain, with: &Fhir.Element.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:_version, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:useContext, with: &Fhir.UsageContext.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:_copyright, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_versionAlgorithmString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_expression, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_constraint, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:jurisdiction, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_inclusion(:experimental, [true, false])
    |> validate_format(:copyright, ~r/^^[\s\S]+$$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:derivedFrom, ~r/^\S*$/)
    |> validate_format(:constraint, ~r/^^[\s\S]+$$/)
    |> validate_format(:purpose, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:multipleOr, [true, false])
    |> validate_format(:processingMode, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:version, ~r/^^[\s\S]+$$/)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_inclusion(:multipleAnd, [true, false])
    |> validate_format(:copyrightLabel, ~r/^^[\s\S]+$$/)
    |> validate_format(:url, ~r/^\S*$/)
    |> validate_format(:expression, ~r/^^[\s\S]+$$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:title, ~r/^^[\s\S]+$$/)
    |> validate_format(:publisher, ~r/^^[\s\S]+$$/)
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
