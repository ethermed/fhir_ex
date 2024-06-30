defmodule Fhir.SubscriptionTopicEventTrigger do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_description, Fhir.Element)
    field(:_resource, Fhir.Element)
    field(:description, :string)
    field(:event, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:resource, :string)
  end
end
