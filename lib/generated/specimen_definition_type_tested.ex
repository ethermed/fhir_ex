defmodule Fhir.SpecimenDefinitionTypeTested do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_isDerived, Fhir.Element
        field :_preference, Fhir.Element
        field :_requirement, Fhir.Element
        field :_singleUse, Fhir.Element
        field :container, Fhir.SpecimenDefinitionContainer
        field :extension, [Fhir.Extension], default: []
        field :handling, [Fhir.SpecimenDefinitionHandling], default: []
        field :id, :string
        field :isDerived, :boolean
        field :modifierExtension, [Fhir.Extension], default: []
        field :preference, :string
        field :rejectionCriterion, [Fhir.CodeableConcept], default: []
        field :requirement, :string
        field :retentionTime, Fhir.Duration
        field :singleUse, :boolean
        field :testingDestination, [Fhir.CodeableConcept], default: []
        field :type, Fhir.CodeableConcept
  end
end
