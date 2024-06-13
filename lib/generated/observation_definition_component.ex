defmodule Fhir.Generated.ObservationDefinitionComponent do
  use TypedStruct

  typedstruct do
    field :_permittedDataType, [Fhir.Generated.Element], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :permittedDataType, [:string], default: []
        field :permittedUnit, [Fhir.Generated.Coding], default: []
        field :qualifiedValue, [Fhir.Generated.ObservationDefinitionQualifiedValue], default: []
  end
end
