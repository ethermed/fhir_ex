defmodule Fhir.ExplanationOfBenefitProcessNote do
  use TypedStruct

  typedstruct do
    field(:_number, Fhir.Element)
    field(:_text, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:language, Fhir.CodeableConcept)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:number, :float)
    field(:text, :string)
    field(:type, Fhir.CodeableConcept)
  end
end
