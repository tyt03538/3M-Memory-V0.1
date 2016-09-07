//
//  DataModel.swift
//  3M-Memory-v0.1
//
//  Created by user on 7/9/2016.
//  Copyright © 2016 CPA. All rights reserved.
//
import Foundation

class FlightDetails:NSObject, NSCoding {
    // Properties
    var departurePort : String?
    var arrivalPort : String?
    var departureDate : String?
    var departureTime : String?
    var arrivalTime : String?
    var flightNumber : String?
    var aircraftType : String?
    var cabinClass : String?
    var seatNumber : String?
    
    
    // Initializer
    init(departurePort:String, arrivalPort:String, departureDate:String, departureTime:String, arrivalTime:String, flightNumber:String, aircraftType:String, cabinClass:String, seatNumber:String){
        self.departurePort = departurePort
        self.arrivalPort = arrivalPort
        self.departureDate = departureDate
        self.departureTime = departureTime
        self.arrivalTime = arrivalTime
        self.flightNumber = flightNumber
        self.aircraftType = aircraftType
        self.cabinClass = cabinClass
        self.seatNumber = seatNumber
    }
    
    // Encoding
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(departurePort, forKey: "departurePort")
        aCoder.encodeObject(arrivalPort, forKey: "arrivalPort")
        aCoder.encodeObject(departureDate, forKey: "departureDate")
        aCoder.encodeObject(departureTime, forKey: "departureTime")
        aCoder.encodeObject(arrivalTime, forKey: "arrivalTime")
        aCoder.encodeObject(flightNumber, forKey: "flightNumber")
        aCoder.encodeObject(aircraftType, forKey: "aircraftType")
        aCoder.encodeObject(cabinClass, forKey: "cabinClass")
        aCoder.encodeObject(seatNumber, forKey: "seatNumber")
    }
    
    required convenience init?(coder aDecoder: NSCoder){
        let departurePort = aDecoder.decodeObjectForKey("departurePort") as! String
        let arrivalPort = aDecoder.decodeObjectForKey("arrivalPort") as! String
        let departureDate = aDecoder.decodeObjectForKey("departureDate") as! String
        let departureTime = aDecoder.decodeObjectForKey("departureTime") as! String
        let arrivalTime = aDecoder.decodeObjectForKey("arrivalTime") as! String
        let flightNumber = aDecoder.decodeObjectForKey("flightNumber") as! String
        let aircraftType = aDecoder.decodeObjectForKey("aircraftType") as! String
        let cabinClass = aDecoder.decodeObjectForKey("cabinClass") as! String
        let seatNumber = aDecoder.decodeObjectForKey("seatNumber") as! String
        
        // Must call designated initializer.
        self.init(departurePort: departurePort, arrivalPort: arrivalPort, departureDate: departureDate, departureTime: departureTime, arrivalTime: arrivalTime, flightNumber: flightNumber, aircraftType: aircraftType, cabinClass: cabinClass, seatNumber: seatNumber)
    }
}

class ImageDescriptor{
    var dest: String?
    
    init(dest : String){
        self.dest = dest
    }
}

class Customer{
    // Property
    var flightRecords: [FlightDetails]
    var imageDetails: [ImageDescriptor]
    var firstName: String
    var lastName: String
    var title: String
    
    init(){
        self.firstName = "Billy"
        self.lastName = "Chan"
        self.title = "Mr."
        
        let fakeFlightRecords = FlightDetails(departurePort: "Hong Kong", arrivalPort: "Male", departureDate: "31-Aug", departureTime: "1730", arrivalTime: "2045", flightNumber: "CX601", aircraftType: "A333", cabinClass: "Y", seatNumber: "41A")
        
        self.flightRecords=[]
        
        self.flightRecords.append(fakeFlightRecords)
        
        fakeFlightRecords.departurePort = "Hong Kong"
        fakeFlightRecords.arrivalPort = "London Heathrow"
        fakeFlightRecords.departureDate = "15-Jun"
        fakeFlightRecords.departureTime = "2355"
        fakeFlightRecords.arrivalTime = "0540"
        fakeFlightRecords.flightNumber = "CX25"
        fakeFlightRecords.aircraftType = "77W"
        fakeFlightRecords.cabinClass = "J"
        fakeFlightRecords.seatNumber = "17A"
        
        self.flightRecords.append(fakeFlightRecords)
        
        fakeFlightRecords.departurePort = "Hong Kong"
        fakeFlightRecords.arrivalPort = "Sydney"
        fakeFlightRecords.departureDate = "17-Feb"
        fakeFlightRecords.departureTime = "2130"
        fakeFlightRecords.arrivalTime = "0845"
        fakeFlightRecords.flightNumber = "CX161"
        fakeFlightRecords.aircraftType = "A333"
        fakeFlightRecords.cabinClass = "Y"
        fakeFlightRecords.seatNumber = "70G"
        
        self.flightRecords.append(fakeFlightRecords)
        
        imageDetails = []
    }
    
    // Encoding
    func encodewithCoder(aCoder: NSCoder){
        aCoder.encodeObject(flightRecords, forKey: "flightRecords")
        aCoder.encodeObject(imageDetails, forKey: "imageDetails")
    }
}
