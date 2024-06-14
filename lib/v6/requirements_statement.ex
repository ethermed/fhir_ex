defmodule Fhir.v6().RequirementsStatement do
  use TypedStruct

  typedstruct do
    field(:_conditionality, Fhir.v6().Element)
    field(:_conformance, [Fhir.v6().Element], default: [])
    field(:_derivedFrom, Fhir.v6().Element)
    field(:_key, Fhir.v6().Element)
    field(:_label, Fhir.v6().Element)
    field(:_parent, Fhir.v6().Element)
    field(:_reference, [Fhir.v6().Element], default: [])
    field(:_requirement, Fhir.v6().Element)
    field(:_satisfiedBy, [Fhir.v6().Element], default: [])
    field(:conditionality, :boolean)
    field(:conformance, [:string], default: [])
    field(:derivedFrom, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:key, :string)
    field(:label, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:parent, :string)
    field(:reference, [:string], default: [])
    field(:requirement, :string)
    field(:satisfiedBy, [:string], default: [])
    field(:source, [Fhir.v6().Reference], default: [])
  end
end
