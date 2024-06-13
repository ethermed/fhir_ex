defmodule Fhir.Generated.SpecimenDefinitionTypeTested do
  use TypedStruct

  typedstruct do
    field :_isDerived, Fhir.Generated.Element
        field :_preference, Fhir.Generated.Element
        field :_requirement, Fhir.Generated.Element
        field :_singleUse, Fhir.Generated.Element
        field :container, Fhir.Generated.SpecimenDefinitionContainer
        field :extension, [Fhir.Generated.Extension], default: []
        field :handling, [Fhir.Generated.SpecimenDefinitionHandling], default: []
        field :id, :string
        field :isDerived, :boolean
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :preference, :string
        field :rejectionCriterion, [Fhir.Generated.CodeableConcept], default: []
        field :requirement, :string
        field :retentionTime, Fhir.Generated.Duration
        field :singleUse, :boolean
        field :testingDestination, [Fhir.Generated.CodeableConcept], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
