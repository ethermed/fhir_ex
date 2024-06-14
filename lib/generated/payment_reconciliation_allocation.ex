defmodule Fhir.PaymentReconciliationAllocation do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.Element)
    field(:_targetItemPositiveInt, Fhir.Element)
    field(:_targetItemString, Fhir.Element)
    field(:account, Fhir.Reference)
    field(:amount, Fhir.Money)
    field(:date, :date)
    field(:encounter, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.Identifier)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:payee, Fhir.Reference)
    field(:predecessor, Fhir.Identifier)
    field(:response, Fhir.Reference)
    field(:responsible, Fhir.Reference)
    field(:submitter, Fhir.Reference)
    field(:target, Fhir.Reference)
    field(:targetItemIdentifier, Fhir.Identifier)
    field(:targetItemPositiveInt, :float)
    field(:targetItemString, :string)
    field(:type, Fhir.CodeableConcept)
  end
end
