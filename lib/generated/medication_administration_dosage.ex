defmodule Fhir.MedicationAdministrationDosage do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_text, Fhir.Element)
    field(:dose, Fhir.Quantity)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:method, Fhir.CodeableConcept)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:rateQuantity, Fhir.Quantity)
    field(:rateRatio, Fhir.Ratio)
    field(:route, Fhir.CodeableConcept)
    field(:site, Fhir.CodeableConcept)
    field(:text, :string)
  end
end
