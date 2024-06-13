defmodule Fhir.Generated.MedicationBatch do
  use TypedStruct

  typedstruct do
    field :_expirationDate, Fhir.Generated.Element
        field :_lotNumber, Fhir.Generated.Element
        field :expirationDate, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :lotNumber, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
