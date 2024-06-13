defmodule Fhir.Generated.ProcedurePerformer do
  use TypedStruct

  typedstruct do
    field :actor, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :function, Fhir.Generated.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :onBehalfOf, Fhir.Generated.Reference
        field :period, Fhir.Generated.Period
  end
end
