defmodule Fhir.v6().SubscriptionTopicEventTrigger do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_resource, Fhir.v6().Element)
    field(:description, :string)
    field(:event, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:resource, :string)
  end
end
