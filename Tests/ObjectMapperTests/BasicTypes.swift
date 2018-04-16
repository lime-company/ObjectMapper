//
//  BasicTypes.swift
//  ObjectMapper
//
//  Created by Tristan Himmelman on 2015-02-17.
//
//  The MIT License (MIT)
//
//  Copyright (c) 2014-2016 Hearst
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation
import ObjectMapper

class BasicTypes: Mappable {
	var bool: Bool = true
	var boolOptional: Bool?

	var int: Int = 0
	var intOptional: Int?

	var int8: Int8 = 0
	var int8Optional: Int8?

	var int16: Int16 = 0
	var int16Optional: Int16?

	var int32: Int32 = 0
	var int32Optional: Int32?

	var int64: Int64 = 0
	var int64Optional: Int64?

	var uint: UInt = 0
	var uintOptional: UInt?

	var uint8: UInt8 = 0
	var uint8Optional: UInt8?

	var uint16: UInt16 = 0
	var uint16Optional: UInt16?

	var uint32: UInt32 = 0
	var uint32Optional: UInt32?

	var uint64: UInt64 = 0
	var uint64Optional: UInt64?

	var double: Double = 1.1
	var doubleOptional: Double?
	var float: Float = 1.11
	var floatOptional: Float?
	var string: String = ""
	var stringOptional: String?
	var anyObject: Any = true
	var anyObjectOptional: Any?
	
	var arrayBool: Array<Bool> = []
	var arrayBoolOptional: Array<Bool>?
	var arrayInt: Array<Int> = []
	var arrayIntOptional: Array<Int>?
	var arrayDouble: Array<Double> = []
	var arrayDoubleOptional: Array<Double>?
	var arrayFloat: Array<Float> = []
	var arrayFloatOptional: Array<Float>?
	var arrayString: Array<String> = []
	var arrayStringOptional: Array<String>?
	var arrayAnyObject: Array<Any> = []
	var arrayAnyObjectOptional: Array<Any>?
	
	var dictBool: Dictionary<String,Bool> = [:]
	var dictBoolOptional: Dictionary<String, Bool>?
	var dictInt: Dictionary<String,Int> = [:]
	var dictIntOptional: Dictionary<String,Int>?
	var dictDouble: Dictionary<String,Double> = [:]
	var dictDoubleOptional: Dictionary<String,Double>?
	var dictFloat: Dictionary<String,Float> = [:]
	var dictFloatOptional: Dictionary<String,Float>?
	var dictString: Dictionary<String,String> = [:]
	var dictStringOptional: Dictionary<String,String>?
	var dictAnyObject: Dictionary<String, Any> = [:]
	var dictAnyObjectOptional: Dictionary<String, Any>?

	enum EnumInt: Int {
		case Default
		case Another
	}
	var enumInt: EnumInt = .Default
	var enumIntOptional: EnumInt?

	enum EnumDouble: Double {
		case Default
		case Another
	}
	var enumDouble: EnumDouble = .Default
	var enumDoubleOptional: EnumDouble?

	enum EnumFloat: Float {
		case Default
		case Another
	}
	var enumFloat: EnumFloat = .Default
	var enumFloatOptional: EnumFloat?

	enum EnumString: String {
		case Default = "Default"
		case Another = "Another"
	}
	var enumString: EnumString = .Default
	var enumStringOptional: EnumString?

	var arrayEnumInt: [EnumInt] = []
	var arrayEnumIntOptional: [EnumInt]?

	var dictEnumInt: [String: EnumInt] = [:]
	var dictEnumIntOptional: [String: EnumInt]?

	init(){
		
	}
	
	required init?(map: Map){

	}
	
	func mapping(map: Map) {
		bool								<- map["bool"]
		boolOptional						<- map["boolOpt"]

		int									<- map["int"]
		intOptional							<- map["intOpt"]

		int8                    			<- map["int8"]
		int8Optional            			<- map["int8Opt"]

		int16                   			<- map["int16"]
		int16Optional           			<- map["int16Opt"]

		int32                   			<- map["int32"]
		int32Optional           			<- map["int32Opt"]

		int64								<- map["int64"]
		int64Optional						<- map["int64Opt"]

		uint								<- map["uint"]
		uintOptional						<- map["uintOpt"]

		uint8                    			<- map["uint8"]
		uint8Optional            			<- map["uint8Opt"]

		uint16                   			<- map["uint16"]
		uint16Optional           			<- map["uint16Opt"]

		uint32                   			<- map["uint32"]
		uint32Optional           			<- map["uint32Opt"]

		uint64								<- map["uint64"]
		uint64Optional						<- map["uint64Opt"]

		double								<- map["double"]
		doubleOptional						<- map["doubleOpt"]
		float								<- map["float"]
		floatOptional						<- map["floatOpt"]
		string								<- map["string"]
		stringOptional						<- map["stringOpt"]
		anyObject							<- map["anyObject"]
		anyObjectOptional					<- map["anyObjectOpt"]
		
		arrayBool							<- map["arrayBool"]
		arrayBoolOptional					<- map["arrayBoolOpt"]
		arrayInt							<- map["arrayInt"]
		arrayIntOptional					<- map["arrayIntOpt"]
		arrayDouble							<- map["arrayDouble"]
		arrayDoubleOptional					<- map["arrayDoubleOpt"]
		arrayFloat							<- map["arrayFloat"]
		arrayFloatOptional					<- map["arrayFloatOpt"]
		arrayString							<- map["arrayString"]
		arrayStringOptional					<- map["arrayStringOpt"]
		arrayAnyObject						<- map["arrayAnyObject"]
		arrayAnyObjectOptional				<- map["arrayAnyObjectOpt"]
		
		dictBool							<- map["dictBool"]
		dictBoolOptional					<- map["dictBoolOpt"]
		dictInt								<- map["dictInt"]
		dictIntOptional						<- map["dictIntOpt"]
		dictDouble							<- map["dictDouble"]
		dictDoubleOptional					<- map["dictDoubleOpt"]
		dictFloat							<- map["dictFloat"]
		dictFloatOptional					<- map["dictFloatOpt"]
		dictString							<- map["dictString"]
		dictStringOptional					<- map["dictStringOpt"]
		dictAnyObject						<- map["dictAnyObject"]
		dictAnyObjectOptional				<- map["dictAnyObjectOpt"]

		enumInt								<- map["enumInt"]
		enumIntOptional						<- map["enumIntOpt"]
		enumDouble							<- map["enumDouble"]
		enumDoubleOptional					<- map["enumDoubleOpt"]
		enumFloat							<- map["enumFloat"]
		enumFloatOptional					<- map["enumFloatOpt"]
		enumString							<- map["enumString"]
		enumStringOptional					<- map["enumStringOpt"]

		arrayEnumInt						<- map["arrayEnumInt"]
		arrayEnumIntOptional				<- map["arrayEnumIntOpt"]
		
		dictEnumInt							<- map["dictEnumInt"]
		dictEnumIntOptional					<- map["dictEnumIntOpt"]
	}
}

class TestCollectionOfPrimitives: Mappable {
	var dictStringString: [String: String] = [:]
	var dictStringInt: [String: Int] = [:]
	var dictStringBool: [String: Bool] = [:]
	var dictStringDouble: [String: Double] = [:]
	var dictStringFloat: [String: Float] = [:]
	
	var arrayString: [String] = []
	var arrayInt: [Int] = []
	var arrayBool: [Bool] = []
	var arrayDouble: [Double] = []
	var arrayFloat: [Float] = []
	
	init(){
		
	}
	
	required init?(map: Map){
		if map["value"].value() == nil {
			
		}
		if map.JSON["value"] == nil {
			
		}
	}
	
	func mapping(map: Map) {
		dictStringString    <- map["dictStringString"]
		dictStringBool      <- map["dictStringBool"]
		dictStringInt       <- map["dictStringInt"]
		dictStringDouble    <- map["dictStringDouble"]
		dictStringFloat     <- map["dictStringFloat"]
		arrayString         <- map["arrayString"]
		arrayInt            <- map["arrayInt"]
		arrayBool           <- map["arrayBool"]
		arrayDouble         <- map["arrayDouble"]
		arrayFloat          <- map["arrayFloat"]
	}
}
