defmodule Fhir.Generated.AdministrableProductDefinition do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :administrableDoseForm, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :description, :string
        field :device, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :formOf, [Fhir.Generated.Reference], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :ingredient, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :producedFrom, [Fhir.Generated.Reference], default: []
        field :property, [Fhir.Generated.AdministrableProductDefinitionProperty], default: []
        field :resourceType, :string, default: "AdministrableProductDefinition"
        field :routeOfAdministration, [Fhir.Generated.AdministrableProductDefinitionRouteOfAdministration], default: []
        field :status, :string
        field :text, Fhir.Generated.Narrative
        field :unitOfPresentation, Fhir.Generated.CodeableConcept
  end
end
