defmodule Fhir.SubstanceReferenceInformationGeneElement do
  use TypedStruct

  typedstruct do
    field(:element, Fhir.Identifier)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:source, [Fhir.Reference], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
