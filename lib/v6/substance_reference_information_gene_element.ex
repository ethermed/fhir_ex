defmodule Fhir.v6().SubstanceReferenceInformationGeneElement do
  use TypedStruct

  typedstruct do
    field(:element, Fhir.v6().Identifier)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:source, [Fhir.v6().Reference], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
