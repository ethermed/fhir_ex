defmodule Fhir.ValueSetScope do
  use TypedStruct

  typedstruct do
    field(:_exclusionCriteria, Fhir.Element)
    field(:_inclusionCriteria, Fhir.Element)
    field(:exclusionCriteria, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:inclusionCriteria, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
