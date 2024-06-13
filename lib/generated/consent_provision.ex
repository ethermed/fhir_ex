defmodule Fhir.Generated.ConsentProvision do
  use TypedStruct

  typedstruct do
    field :action, [Fhir.Generated.CodeableConcept], default: []
        field :actor, [Fhir.Generated.ConsentActor], default: []
        field :code, [Fhir.Generated.CodeableConcept], default: []
        field :data, [Fhir.Generated.ConsentData], default: []
        field :dataPeriod, Fhir.Generated.Period
        field :documentType, [Fhir.Generated.Coding], default: []
        field :expression, Fhir.Generated.Expression
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
        field :provision, [Fhir.Generated.ConsentProvision], default: []
        field :purpose, [Fhir.Generated.Coding], default: []
        field :resourceType, [Fhir.Generated.Coding], default: []
        field :securityLabel, [Fhir.Generated.Coding], default: []
  end
end
