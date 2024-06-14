defmodule Fhir.v6().ClinicalUseDefinitionWarning do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
