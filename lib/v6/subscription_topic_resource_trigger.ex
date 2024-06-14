defmodule Fhir.v6().SubscriptionTopicResourceTrigger do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_fhirPathCriteria, Fhir.v6().Element)
    field(:_resource, Fhir.v6().Element)
    field(:_supportedInteraction, [Fhir.v6().Element], default: [])
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:fhirPathCriteria, :string)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:queryCriteria, Fhir.v6().SubscriptionTopicQueryCriteria)
    field(:resource, :string)
    field(:supportedInteraction, [:string], default: [])
  end
end
