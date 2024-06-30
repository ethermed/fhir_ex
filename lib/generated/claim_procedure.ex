defmodule Fhir.ClaimProcedure do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_date, Fhir.Element)
    field(:_sequence, Fhir.Element)
    field(:date, :datetime)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:procedureCodeableConcept, Fhir.CodeableConcept)
    field(:procedureReference, Fhir.Reference)
    field(:sequence, :float)
    field(:type, [Fhir.CodeableConcept], default: [])
    field(:udi, [Fhir.Reference], default: [])
  end
end
