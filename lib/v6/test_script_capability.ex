defmodule Fhir.v6().TestScriptCapability do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_destination, Fhir.v6().Element)
    field(:_link, [Fhir.v6().Element], default: [])
    field(:_origin, [Fhir.v6().Element], default: [])
    field(:_required, Fhir.v6().Element)
    field(:_validated, Fhir.v6().Element)
    field(:capabilities, :string)
    field(:description, :string)
    field(:destination, :float)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:link, [:string], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:origin, [:float], default: [])
    field(:required, :boolean)
    field(:validated, :boolean)
  end
end
