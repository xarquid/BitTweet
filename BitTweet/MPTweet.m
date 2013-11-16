//
//  MPTweet.m
//  aleaf
//
//  Created by MPow on 05/10/13.
//  Copyright (c) 2013 MPow. All rights reserved.
//

#import "MPTweet.h"

#define GETFORKEY(x) [dict objectForKey:x]
@implementation MPTweet


-(id)initWithDictionary:(NSDictionary *)dict{
    self=[super init];
    if (self) {
        
     //   MPLogHighlited(@"dict %@",dict);
        
        if (GETFORKEY(@"retweeted_status") && [GETFORKEY(@"retweeted_status") isKindOfClass:[NSDictionary class]]) {
            self.retwitter=[[MPTwitterUser alloc] initWithDictionary:GETFORKEY(userKey)];
            dict=GETFORKEY(@"retweeted_status");
        }

        NSDateFormatter* df=[[NSDateFormatter alloc] init];
        [df setDateFormat:@"EEE MMM dd HH:mm:ss Z yyyy"];
        [df setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_GB"]];
        self.date=[df dateFromString:GETFORKEY(dateKey)];
        
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDateComponents *components = [calendar components:NSMinuteCalendarUnit|NSSecondCalendarUnit| NSHourCalendarUnit|NSDayCalendarUnit
                                                   fromDate:self.date
                                                     toDate:[NSDate date]
                                                    options:0];
        
        self.dateString=[NSString stringWithFormat:@"%li",(long)(components.minute>0 ? ((components.hour>0 ? ((components.day>0 ? (components.day) : components.hour)) : components.minute)) : components.second)];
        self.dateString=[self.dateString stringByAppendingString:[NSString stringWithFormat:@"%@",(components.minute>0 ? ((components.hour>0 ? ((components.day>0 ? (@"d") : @"h")) : @"m")) : @"s")]];

        
        self.favCount=[GETFORKEY(favoriteCount) integerValue];
        self.rtCount=[GETFORKEY(retweetCount) integerValue];
        self.user=[[MPTwitterUser alloc] initWithDictionary:GETFORKEY(userKey)];
        self.text=GETFORKEY(textKey);


    }
    
    return self;
}

@end
