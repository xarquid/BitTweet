//
//  MPTwitterUser.h
//  aleaf
//
//  Created by MPow on 05/10/13.
//  Copyright (c) 2013 MPow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TwitterKeys.h"



typedef NSInteger MPProfileState;

@interface MPTwitterUser : NSObject

@property(nonatomic,readwrite) int followers, following, tweetcount,listedCount, favCount;
@property(nonatomic,readwrite) BOOL youFollow;
@property(nonatomic,readwrite) NSString* userId,*profilePicUrl,*bannerUrl,*username,*name,*description;
@property(nonatomic,readwrite) NSDate* signDate;
@property(nonatomic,readwrite) NSArray* url;
@property(nonatomic,readwrite) float lat, longit;

-(id)initWithDictionary:(NSDictionary *)dict;


@end
