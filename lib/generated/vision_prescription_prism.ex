defmodule Fhir.Generated.VisionPrescriptionPrism do
  use TypedStruct

  typedstruct do
    field :_amount, Fhir.Generated.Element
        field :_base, Fhir.Generated.Element
        field :amount, :decimal
        field :base, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
