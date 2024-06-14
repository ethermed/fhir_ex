defmodule Fhir.v6().MeasureComponent do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_linkId, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:criteria, Fhir.v6().Expression)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:groupDefinition, Fhir.v6().Reference)
    field(:id, :string)
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
