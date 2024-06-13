defmodule Fhir.Generated.Permission do
  use TypedStruct

  typedstruct do
    field :_combining, Fhir.Generated.Element
        field :_date, [Fhir.Generated.Element], default: []
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :asserter, Fhir.Generated.Reference
        field :combining, :string
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :date, [:datetime], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :implicitRules, :string
        field :justification, Fhir.Generated.PermissionJustification
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resourceType, :string, default: "Permission"
        field :rule, [Fhir.Generated.PermissionRule], default: []
        field :status, :string
        field :text, Fhir.Generated.Narrative
        field :validity, Fhir.Generated.Period
  end
end
