defmodule Fhir.ProcedurePerformer do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :actor, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :function, Fhir.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :onBehalfOf, Fhir.Reference
        field :period, Fhir.Period
  end
end
