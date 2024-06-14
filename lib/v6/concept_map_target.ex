defmodule Fhir.v6().ConceptMapTarget do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_comment, Fhir.v6().Element)
    field(:_display, Fhir.v6().Element)
    field(:_relationship, Fhir.v6().Element)
    field(:code, :string)
    field(:comment, :string)
    field(:dependsOn, [Fhir.v6().ConceptMapDependsOn], default: [])
    field(:display, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:product, [Fhir.v6().ConceptMapDependsOn], default: [])
    field(:property, [Fhir.v6().ConceptMapProperty1], default: [])
    field(:relationship, :string)
    field(:valueSet, :string)
  end
end
