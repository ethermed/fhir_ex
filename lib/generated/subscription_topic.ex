defmodule Fhir.Generated.SubscriptionTopic do
  use TypedStruct

  typedstruct do
    field :_approvalDate, Fhir.Generated.Element
        field :_copyright, Fhir.Generated.Element
        field :_copyrightLabel, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_experimental, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lastReviewDate, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_publisher, Fhir.Generated.Element
        field :_purpose, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :_versionAlgorithmString, Fhir.Generated.Element
        field :approvalDate, :date
        field :canFilterBy, [Fhir.Generated.SubscriptionTopicCanFilterBy], default: []
        field :contact, [Fhir.Generated.ContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :copyright, :string
        field :copyrightLabel, :string
        field :date, :datetime
        field :derivedFrom, [:string], default: []
        field :description, :string
        field :effectivePeriod, Fhir.Generated.Period
        field :eventTrigger, [Fhir.Generated.SubscriptionTopicEventTrigger], default: []
        field :experimental, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :jurisdiction, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :lastReviewDate, :date
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :notificationShape, [Fhir.Generated.SubscriptionTopicNotificationShape], default: []
        field :publisher, :string
        field :purpose, :string
        field :resourceTrigger, [Fhir.Generated.SubscriptionTopicResourceTrigger], default: []
        field :resourceType, :string, default: "SubscriptionTopic"
        field :status, :string
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :url, :string
        field :useContext, [Fhir.Generated.UsageContext], default: []
        field :version, :string
        field :versionAlgorithmCoding, Fhir.Generated.Coding
        field :versionAlgorithmString, :string
  end
end
