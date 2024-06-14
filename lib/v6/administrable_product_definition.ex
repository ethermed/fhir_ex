defmodule Fhir.v6().AdministrableProductDefinition do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:administrableDoseForm, Fhir.v6().CodeableConcept)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:description, :string)
    field(:device, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:formOf, [Fhir.v6().Reference], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:ingredient, [Fhir.v6().CodeableConcept], default: [])
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:producedFrom, [Fhir.v6().Reference], default: [])
    field(:property, [Fhir.v6().AdministrableProductDefinitionProperty], default: [])
    field(:resourceType, :string, default: "AdministrableProductDefinition")

    field(:routeOfAdministration, [Fhir.v6().AdministrableProductDefinitionRouteOfAdministration],
      default: []
    )

    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
    field(:unitOfPresentation, Fhir.v6().CodeableConcept)
  end
end
