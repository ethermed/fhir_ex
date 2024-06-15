defmodule Fhir.PaymentReconciliationProcessNote do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_text, Fhir.Element
        field :_type, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :text, :string
        field :type, :string
  end
end
