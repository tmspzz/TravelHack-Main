//
//  Ride.m
//  TravelHack
//
//  Created by Tommaso Piazza on 10/8/11.
//  Copyright (c) 2011 ChalmersTH. All rights reserved.
//

#import "Ride.h"

@implementation Ride

@synthesize exptime, rideid, routeid, fromlat, fromlang, fromtime, tolat, tolang, totime, confirmed, rideName, passengerNo, toName, fromName, co2;


+(Ride *) rideWithDictionary:(NSDictionary *) theDic{
    

    return [[self alloc] initWithDictionary:theDic];
    

}

-(Ride *) initWithDictionary:(NSDictionary*) theDic{

    
    if((self = [super init])){
        
        self.exptime = [theDic objectForKey:@"exptime"];
        self.rideid = [[theDic objectForKey:@"rideid"] intValue];
        self.fromlat = [[theDic objectForKey:@"fromlat"] floatValue];
        self.fromlang = [[theDic objectForKey:@"fromlang"] floatValue];
        self.tolat = [[theDic objectForKey:@"tolat"] floatValue];
        self.tolang = [[theDic objectForKey:@"tolang"] floatValue];
        self.routeid = [[theDic objectForKey:@"routeid"] intValue];
        self.totime = [theDic objectForKey:@"totime"];
        self.fromtime = [theDic objectForKey:@"fromtime"];
        self.confirmed = [[theDic objectForKey:@"confirmed"] boolValue];
        self.rideName = [theDic objectForKey:@"ridename"];
        self.passengerNo = [[theDic objectForKey:@"passengerno"] intValue];
        self.toName = [theDic objectForKey:@"toname"];
        self.fromName = [theDic objectForKey:@"fromname"];
        self.co2 = [[theDic objectForKey:@"co2"] floatValue];
        
    }
    
    return self;
    
}

@end
