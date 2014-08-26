//
//  Group.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 (group.profile.json) on 2014-08-26.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Group of multiple entities.
 *
 *  Scope and Usage Use Cases The group resource is used in one of two ways:
 *  
 *  * To define a group of specific people, animals, devices, etc. that is being tracked, examined or otherwise
 *  referenced as part of healthcare-related activities
 *  * To define a set of *possible* people, animals, devices, etc. that are of interest for some intended future
 *  healthcare-related activities
 *  Examples of the former could include group therapy or treatment sessions, exposed entities tracked as part of
 *  public health, etc. The latter might be used to define expected subjects for a clinical study.
 *  
 *  Both use cases are handled by a single resource because the data elements captured tend to be similar.
 */
public class Group: FHIRResource
{
	override public class var resourceName: String {
		get { return "Group" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Unique id */
	public var identifier: Identifier?
	
	/** person | animal | practitioner | device | medication | substance */
	public var type: String?
	
	/** Descriptive or actual */
	public var actual: Bool?
	
	/** Kind of Group members */
	public var code: CodeableConcept?
	
	/** Label for Group */
	public var name: String?
	
	/** Number of members */
	public var quantity: Int?
	
	/** Trait of group members */
	public var characteristic: [GroupCharacteristic]?
	
	/** Who is in group */
	public var member: [FHIRElement]? {
		get { return resolveReferences("member") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "member")
			}
		}
	}
	
	public convenience init(type: String?, actual: Bool?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
		if nil != actual {
			self.actual = actual
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["actual"] as? Int {
				self.actual = (1 == val)
			}
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["quantity"] as? Int {
				self.quantity = val
			}
			if let val = js["characteristic"] as? [NSDictionary] {
				self.characteristic = GroupCharacteristic.from(val) as? [GroupCharacteristic]
			}
			if let val = js["member"] as? [NSDictionary] {
				self.member = ResourceReference.from(val) as? [ResourceReference]
			}
		}
	}
}


/**
 *  Trait of group members.
 *
 *  Identifies the traits shared by members of the group.
 */
public class GroupCharacteristic: FHIRElement
{	
	/** Kind of characteristic */
	public var code: CodeableConcept?
	
	/** Value held by characteristic */
	public var valueCodeableConcept: CodeableConcept?
	
	/** Value held by characteristic */
	public var valueBoolean: Bool?
	
	/** Value held by characteristic */
	public var valueQuantity: Quantity?
	
	/** Value held by characteristic */
	public var valueRange: Range?
	
	/** Group includes or excludes */
	public var exclude: Bool?
	
	public convenience init(code: CodeableConcept?, valueCodeableConcept: CodeableConcept?, valueBoolean: Bool?, valueQuantity: Quantity?, valueRange: Range?, exclude: Bool?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != valueCodeableConcept {
			self.valueCodeableConcept = valueCodeableConcept
		}
		if nil != valueBoolean {
			self.valueBoolean = valueBoolean
		}
		if nil != valueQuantity {
			self.valueQuantity = valueQuantity
		}
		if nil != valueRange {
			self.valueRange = valueRange
		}
		if nil != exclude {
			self.exclude = exclude
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["valueCodeableConcept"] as? NSDictionary {
				self.valueCodeableConcept = CodeableConcept(json: val)
			}
			if let val = js["valueBoolean"] as? Int {
				self.valueBoolean = (1 == val)
			}
			if let val = js["valueQuantity"] as? NSDictionary {
				self.valueQuantity = Quantity(json: val)
			}
			if let val = js["valueRange"] as? NSDictionary {
				self.valueRange = Range(json: val)
			}
			if let val = js["exclude"] as? Int {
				self.exclude = (1 == val)
			}
		}
	}
}

