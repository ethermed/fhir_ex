defmodule Fhir.ClinicalUseDefinitionWarning do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
