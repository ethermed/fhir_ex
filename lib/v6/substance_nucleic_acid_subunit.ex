defmodule Fhir.v6().SubstanceNucleicAcidSubunit do
  use TypedStruct

  typedstruct do
    field(:_length, Fhir.v6().Element)
    field(:_sequence, Fhir.v6().Element)
    field(:_subunit, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:fivePrime, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:length, :float)
    field(:linkage, [Fhir.v6().SubstanceNucleicAcidLinkage], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:sequence, :string)
    field(:sequenceAttachment, Fhir.v6().Attachment)
    field(:subunit, :float)
    field(:sugar, [Fhir.v6().SubstanceNucleicAcidSugar], default: [])
    field(:threePrime, Fhir.v6().CodeableConcept)
  end
end
