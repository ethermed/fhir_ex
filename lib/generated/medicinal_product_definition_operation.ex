defmodule Fhir.MedicinalProductDefinitionOperation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:confidentialityIndicator, Fhir.CodeableConcept)
    field(:effectiveDate, Fhir.Period)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:organization, [Fhir.Reference], default: [])
    field(:type, Fhir.CodeableReference)
  end
end
