defmodule Fhir.Generated.SubstanceNucleicAcidSubunit do
  use TypedStruct

  typedstruct do
    field :_length, Fhir.Generated.Element
        field :_sequence, Fhir.Generated.Element
        field :_subunit, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :fivePrime, Fhir.Generated.CodeableConcept
        field :id, :string
        field :length, :float
        field :linkage, [Fhir.Generated.SubstanceNucleicAcidLinkage], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :sequence, :string
        field :sequenceAttachment, Fhir.Generated.Attachment
        field :subunit, :float
        field :sugar, [Fhir.Generated.SubstanceNucleicAcidSugar], default: []
        field :threePrime, Fhir.Generated.CodeableConcept
  end
end
