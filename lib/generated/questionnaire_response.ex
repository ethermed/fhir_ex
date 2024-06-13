defmodule Fhir.Generated.QuestionnaireResponse do
  use TypedStruct

  typedstruct do
    field :_authored, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :author, Fhir.Generated.Reference
        field :authored, :datetime
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :item, [Fhir.Generated.QuestionnaireResponseItem], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :partOf, [Fhir.Generated.Reference], default: []
        field :questionnaire, :string
        field :resourceType, :string, default: "QuestionnaireResponse"
        field :source, Fhir.Generated.Reference
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
  end
end
