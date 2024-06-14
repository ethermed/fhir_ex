defmodule Fhir.Permission do
  use TypedStruct

  typedstruct do
    field(:_combining, Fhir.Element)
    field(:_date, [Fhir.Element], default: [])
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:asserter, Fhir.Reference)
    field(:combining, :string)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:date, [:datetime], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:implicitRules, :string)
    field(:justification, Fhir.PermissionJustification)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:resourceType, :string, default: "Permission")
    field(:rule, [Fhir.PermissionRule], default: [])
    field(:status, :string)
    field(:text, Fhir.Narrative)
    field(:validity, Fhir.Period)
  end
end
