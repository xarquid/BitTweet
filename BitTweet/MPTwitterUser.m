//
//  MPTwitterUser.m
//  aleaf
//
//  Created by MPow on 05/10/13.
//  Copyright (c) 2013 MPow. All rights reserved.
//

#import "MPTwitterUser.h"
#define GETFORKEY(x) [dict objectForKey:x]

@implementation MPTwitterUser


-(id)initWithDictionary:(NSDictionary *)dict{
    self=[super init];
    if (self) {
        
        self.username=GETFORKEY(usernameKey);
        self.name=GETFORKEY(nameKey);
//others are useless for that ATM
        
    }
    
    return self;
}


@end
