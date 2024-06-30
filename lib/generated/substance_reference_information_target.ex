defmodule Fhir.SubstanceReferenceInformationTarget do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_amountString, Fhir.Element)
    field(:amountQuantity, Fhir.Quantity)
    field(:amountRange, Fhir.Range)
    field(:amountString, :string)
    field(:amountType, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:interaction, Fhir.CodeableConcept)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:organism, Fhir.CodeableConcept)
    field(:organismType, Fhir.CodeableConcept)
    field(:source, [Fhir.Reference], default: [])
    field(:target, Fhir.Identifier)
    field(:type, Fhir.CodeableConcept)
  end
end
