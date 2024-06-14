defmodule Fhir.v6().PaymentReconciliationAllocation do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.v6().Element)
    field(:_targetItemPositiveInt, Fhir.v6().Element)
    field(:_targetItemString, Fhir.v6().Element)
    field(:account, Fhir.v6().Reference)
    field(:amount, Fhir.v6().Money)
    field(:date, :date)
    field(:encounter, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:payee, Fhir.v6().Reference)
    field(:predecessor, Fhir.v6().Identifier)
    field(:response, Fhir.v6().Reference)
    field(:responsible, Fhir.v6().Reference)
    field(:submitter, Fhir.v6().Reference)
    field(:target, Fhir.v6().Reference)
    field(:targetItemIdentifier, Fhir.v6().Identifier)
    field(:targetItemPositiveInt, :float)
    field(:targetItemString, :string)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
