defmodule Fhir.v6().ValueSetScope do
  use TypedStruct

  typedstruct do
    field(:_exclusionCriteria, Fhir.v6().Element)
    field(:_inclusionCriteria, Fhir.v6().Element)
    field(:exclusionCriteria, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:inclusionCriteria, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
