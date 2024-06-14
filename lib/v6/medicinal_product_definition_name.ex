defmodule Fhir.v6().MedicinalProductDefinitionName do
  use TypedStruct

  typedstruct do
    field(:_productName, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:part, [Fhir.v6().MedicinalProductDefinitionPart], default: [])
    field(:productName, :string)
    field(:type, Fhir.v6().CodeableConcept)
    field(:usage, [Fhir.v6().MedicinalProductDefinitionUsage], default: [])
  end
end
