defmodule Fhir.AuditEventAgent do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_networkString, Fhir.Element)
    field(:_networkUri, Fhir.Element)
    field(:_policy, [Fhir.Element], default: [])
    field(:_requestor, Fhir.Element)
    field(:authorization, [Fhir.CodeableConcept], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:location, Fhir.Reference)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:networkReference, Fhir.Reference)
    field(:networkString, :string)
    field(:networkUri, :string)
    field(:policy, [:string], default: [])
    field(:requestor, :boolean)
    field(:role, [Fhir.CodeableConcept], default: [])
    field(:type, Fhir.CodeableConcept)
    field(:who, Fhir.Reference)
  end
end
