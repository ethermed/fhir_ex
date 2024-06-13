defmodule Fhir.Generated.ProcedureFocalDevice do
  use TypedStruct

  typedstruct do
    field :action, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :manipulated, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
