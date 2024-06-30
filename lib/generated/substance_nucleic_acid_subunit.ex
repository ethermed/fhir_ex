defmodule Fhir.SubstanceNucleicAcidSubunit do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_length, Fhir.Element)
    field(:_sequence, Fhir.Element)
    field(:_subunit, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:fivePrime, Fhir.CodeableConcept)
    field(:id, :string)
    field(:length, :float)
    field(:linkage, [Fhir.SubstanceNucleicAcidLinkage], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:sequence, :string)
    field(:sequenceAttachment, Fhir.Attachment)
    field(:subunit, :float)
    field(:sugar, [Fhir.SubstanceNucleicAcidSugar], default: [])
    field(:threePrime, Fhir.CodeableConcept)
  end
end
