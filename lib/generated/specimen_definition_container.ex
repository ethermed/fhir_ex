defmodule Fhir.Generated.SpecimenDefinitionContainer do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_minimumVolumeString, Fhir.Generated.Element
        field :_preparation, Fhir.Generated.Element
        field :additive, [Fhir.Generated.SpecimenDefinitionAdditive], default: []
        field :cap, Fhir.Generated.CodeableConcept
        field :capacity, Fhir.Generated.Quantity
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :material, Fhir.Generated.CodeableConcept
        field :minimumVolumeQuantity, Fhir.Generated.Quantity
        field :minimumVolumeString, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :preparation, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end
