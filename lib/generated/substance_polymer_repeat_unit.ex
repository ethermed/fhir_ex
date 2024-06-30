defmodule Fhir.SubstancePolymerRepeatUnit do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_amount, Fhir.Element)
    field(:_unit, Fhir.Element)
    field(:amount, :float)
    field(:degreeOfPolymerisation, [Fhir.SubstancePolymerDegreeOfPolymerisation], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:orientation, Fhir.CodeableConcept)
    field(:structuralRepresentation, [Fhir.SubstancePolymerStructuralRepresentation], default: [])
    field(:unit, :string)
  end
end
