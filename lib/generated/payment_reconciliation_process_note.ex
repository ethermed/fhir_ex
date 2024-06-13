defmodule Fhir.Generated.PaymentReconciliationProcessNote do
  use TypedStruct

  typedstruct do
    field :_text, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :text, :string
        field :type, :string
  end
end
