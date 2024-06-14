defmodule Fhir.AdministrableProductDefinition do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:administrableDoseForm, Fhir.CodeableConcept)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:description, :string)
    field(:device, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:formOf, [Fhir.Reference], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:ingredient, [Fhir.CodeableConcept], default: [])
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:producedFrom, [Fhir.Reference], default: [])
    field(:property, [Fhir.AdministrableProductDefinitionProperty], default: [])
    field(:resourceType, :string, default: "AdministrableProductDefinition")

    field(:routeOfAdministration, [Fhir.AdministrableProductDefinitionRouteOfAdministration],
      default: []
    )

    field(:status, :string)
    field(:text, Fhir.Narrative)
    field(:unitOfPresentation, Fhir.CodeableConcept)
  end
end
