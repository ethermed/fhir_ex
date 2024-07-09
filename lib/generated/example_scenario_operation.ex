defmodule Fhir.ExampleScenarioOperation do
  @moduledoc """
  Example of workflow instance.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:initiator, :string)
    field(:initiatorActive, :boolean)
    field(:receiver, :string)
    field(:receiverActive, :boolean)
    field(:title, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_initiator, Fhir.Element)
    embeds_one(:_initiatorActive, Fhir.Element)
    embeds_one(:_receiver, Fhir.Element)
    embeds_one(:_receiverActive, Fhir.Element)
    embeds_one(:_title, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:request, Fhir.ExampleScenarioContainedInstance)
    embeds_one(:response, Fhir.ExampleScenarioContainedInstance)
    embeds_one(:type, Fhir.Coding)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          initiator: String.t(),
          initiatorActive: boolean(),
          receiver: String.t(),
          receiverActive: boolean(),
          title: String.t(),
          _description: Fhir.Element.t(),
          _initiator: Fhir.Element.t(),
          _initiatorActive: Fhir.Element.t(),
          _receiver: Fhir.Element.t(),
          _receiverActive: Fhir.Element.t(),
          _title: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          request: Fhir.ExampleScenarioContainedInstance.t(),
          response: Fhir.ExampleScenarioContainedInstance.t(),
          type: Fhir.Coding.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :description,
      :id,
      :initiator,
      :initiatorActive,
      :receiver,
      :receiverActive,
      :title
    ])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_initiator, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_initiatorActive, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_receiver, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_receiverActive, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:request, with: &Fhir.ExampleScenarioContainedInstance.changeset/2)
    |> cast_embed(:response, with: &Fhir.ExampleScenarioContainedInstance.changeset/2)
    |> cast_embed(:type, with: &Fhir.Coding.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:initiator, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:initiatorActive, [true, false])
    |> validate_format(:receiver, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:receiverActive, [true, false])
    |> validate_format(:title, ~r/^^[\s\S]+$$/)
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
