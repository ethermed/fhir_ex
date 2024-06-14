defmodule Fhir.v6().SubstancePolymerRepeatUnit do
  use TypedStruct

  typedstruct do
    field(:_amount, Fhir.v6().Element)
    field(:_unit, Fhir.v6().Element)
    field(:amount, :float)

    field(:degreeOfPolymerisation, [Fhir.v6().SubstancePolymerDegreeOfPolymerisation],
      default: []
    )

    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:orientation, Fhir.v6().CodeableConcept)

    field(:structuralRepresentation, [Fhir.v6().SubstancePolymerStructuralRepresentation],
      default: []
    )

    field(:unit, :string)
  end
end
