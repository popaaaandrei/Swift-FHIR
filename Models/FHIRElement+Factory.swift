//
//  FHIRElement+Factory.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-26.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Extension to FHIRElement to be able to instantiate by class name.
 */
extension FHIRElement
{
	public class func factory(className: String, json: NSDictionary) -> FHIRElement {
		switch className {
			case "Address":	return Address(json: json)
			case "AdverseReaction":	return AdverseReaction(json: json)
			case "Age":	return Age(json: json)
			case "Alert":	return Alert(json: json)
			case "AllergyIntolerance":	return AllergyIntolerance(json: json)
			case "Attachment":	return Attachment(json: json)
			case "CarePlan":	return CarePlan(json: json)
			case "CodeableConcept":	return CodeableConcept(json: json)
			case "Coding":	return Coding(json: json)
			case "Composition":	return Composition(json: json)
			case "ConceptMap":	return ConceptMap(json: json)
			case "Condition":	return Condition(json: json)
			case "Conformance":	return Conformance(json: json)
			case "Contact":	return Contact(json: json)
			case "Count":	return Count(json: json)
			case "Device":	return Device(json: json)
			case "DeviceObservationReport":	return DeviceObservationReport(json: json)
			case "DiagnosticOrder":	return DiagnosticOrder(json: json)
			case "DiagnosticReport":	return DiagnosticReport(json: json)
			case "Distance":	return Distance(json: json)
			case "DocumentManifest":	return DocumentManifest(json: json)
			case "DocumentReference":	return DocumentReference(json: json)
			case "Duration":	return Duration(json: json)
			case "Encounter":	return Encounter(json: json)
			case "Extension":	return Extension(json: json)
			case "FamilyHistory":	return FamilyHistory(json: json)
			case "Group":	return Group(json: json)
			case "HumanName":	return HumanName(json: json)
			case "Identifier":	return Identifier(json: json)
			case "ImagingStudy":	return ImagingStudy(json: json)
			case "Immunization":	return Immunization(json: json)
			case "ImmunizationRecommendation":	return ImmunizationRecommendation(json: json)
			case "List":	return List(json: json)
			case "Location":	return Location(json: json)
			case "Media":	return Media(json: json)
			case "Medication":	return Medication(json: json)
			case "MedicationAdministration":	return MedicationAdministration(json: json)
			case "MedicationDispense":	return MedicationDispense(json: json)
			case "MedicationPrescription":	return MedicationPrescription(json: json)
			case "MedicationStatement":	return MedicationStatement(json: json)
			case "MessageHeader":	return MessageHeader(json: json)
			case "Money":	return Money(json: json)
			case "Narrative":	return Narrative(json: json)
			case "Observation":	return Observation(json: json)
			case "OperationOutcome":	return OperationOutcome(json: json)
			case "Order":	return Order(json: json)
			case "OrderResponse":	return OrderResponse(json: json)
			case "Organization":	return Organization(json: json)
			case "Other":	return Other(json: json)
			case "Patient":	return Patient(json: json)
			case "Period":	return Period(json: json)
			case "Practitioner":	return Practitioner(json: json)
			case "Procedure":	return Procedure(json: json)
			case "Profile":	return Profile(json: json)
			case "Provenance":	return Provenance(json: json)
			case "Quantity":	return Quantity(json: json)
			case "Query":	return Query(json: json)
			case "Questionnaire":	return Questionnaire(json: json)
			case "Range":	return Range(json: json)
			case "Ratio":	return Ratio(json: json)
			case "RelatedPerson":	return RelatedPerson(json: json)
			case "ResourceReference":	return ResourceReference(json: json)
			case "SampledData":	return SampledData(json: json)
			case "Schedule":	return Schedule(json: json)
			case "SecurityEvent":	return SecurityEvent(json: json)
			case "Specimen":	return Specimen(json: json)
			case "Substance":	return Substance(json: json)
			case "Supply":	return Supply(json: json)
			case "ValueSet":	return ValueSet(json: json)
			default:	return FHIRElement(json: json)
		}
	}
}
