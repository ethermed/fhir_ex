defmodule Fhir.Generated.SpecimenDefinitionHandling do
  use TypedStruct

  typedstruct do
    field :_instruction, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :instruction, :string
        field :maxDuration, Fhir.Generated.Duration
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :temperatureQualifier, Fhir.Generated.CodeableConcept
        field :temperatureRange, Fhir.Generated.Range
  end
end
