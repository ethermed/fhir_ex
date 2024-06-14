defmodule Fhir.RequirementsStatement do
  use TypedStruct

  typedstruct do
    field(:_conditionality, Fhir.Element)
    field(:_conformance, [Fhir.Element], default: [])
    field(:_derivedFrom, Fhir.Element)
    field(:_key, Fhir.Element)
    field(:_label, Fhir.Element)
    field(:_parent, Fhir.Element)
    field(:_reference, [Fhir.Element], default: [])
    field(:_requirement, Fhir.Element)
    field(:_satisfiedBy, [Fhir.Element], default: [])
    field(:conditionality, :boolean)
    field(:conformance, [:string], default: [])
    field(:derivedFrom, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:key, :string)
    field(:label, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:parent, :string)
    field(:reference, [:string], default: [])
    field(:requirement, :string)
    field(:satisfiedBy, [:string], default: [])
    field(:source, [Fhir.Reference], default: [])
  end
end
