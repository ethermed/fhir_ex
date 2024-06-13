defmodule Fhir.Generated.ImmunizationProtocolApplied do
  use TypedStruct

  typedstruct do
    field :_doseNumber, Fhir.Generated.Element
        field :_series, Fhir.Generated.Element
        field :_seriesDoses, Fhir.Generated.Element
        field :authority, Fhir.Generated.Reference
        field :doseNumber, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :series, :string
        field :seriesDoses, :string
        field :targetDisease, [Fhir.Generated.CodeableConcept], default: []
  end
end
