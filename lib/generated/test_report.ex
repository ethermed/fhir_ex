defmodule Fhir.TestReport do
  @moduledoc """
  A summary of information based on the results of executing a TestScript.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:issued, :string)
    field(:language, :string)
    field(:name, :string)
    field(:resourceType, :string, default: "TestReport")
    field(:result, :string)
    field(:score, :float)
    field(:status, :string)
    field(:testScript, :string)
    field(:tester, :string)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_issued, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_result, Fhir.Element)
    embeds_one(:_score, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:_tester, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:participant, Fhir.TestReportParticipant)
    embeds_one(:setup, Fhir.TestReportSetup)
    embeds_one(:teardown, Fhir.TestReportTeardown)
    embeds_many(:test, Fhir.TestReportTest)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          issued: String.t(),
          language: String.t(),
          name: String.t(),
          resourceType: String.t(),
          result: String.t(),
          score: float(),
          status: String.t(),
          testScript: String.t(),
          tester: String.t(),
          _implicitRules: Fhir.Element.t(),
          _issued: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _result: Fhir.Element.t(),
          _score: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          _tester: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          identifier: Fhir.Identifier.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          participant: [Fhir.TestReportParticipant.t()],
          setup: Fhir.TestReportSetup.t(),
          teardown: Fhir.TestReportTeardown.t(),
          test: [Fhir.TestReportTest.t()],
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :id,
      :implicitRules,
      :issued,
      :language,
      :name,
      :resourceType,
      :result,
      :score,
      :status,
      :testScript,
      :tester
    ])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_issued, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_result, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_score, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_tester, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:participant, with: &Fhir.TestReportParticipant.changeset/2)
    |> cast_embed(:setup, with: &Fhir.TestReportSetup.changeset/2)
    |> cast_embed(:teardown, with: &Fhir.TestReportTeardown.changeset/2)
    |> cast_embed(:test, with: &Fhir.TestReportTest.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(
      :issued,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(:result, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:testScript, ~r/^\S*$/)
    |> validate_format(:tester, ~r/^^[\s\S]+$$/)
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
