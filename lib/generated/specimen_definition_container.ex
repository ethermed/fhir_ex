defmodule Fhir.SpecimenDefinitionContainer do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_minimumVolumeString, Fhir.Element
        field :_preparation, Fhir.Element
        field :additive, [Fhir.SpecimenDefinitionAdditive], default: []
        field :cap, Fhir.CodeableConcept
        field :capacity, Fhir.Quantity
        field :description, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :material, Fhir.CodeableConcept
        field :minimumVolumeQuantity, Fhir.Quantity
        field :minimumVolumeString, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :preparation, :string
        field :type, Fhir.CodeableConcept
  end
end
