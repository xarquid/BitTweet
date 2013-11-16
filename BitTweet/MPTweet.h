//
//  MPTweet.h
//  aleaf
//
//  Created by MPow on 05/10/13.
//  Copyright (c) 2013 MPow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TwitterKeys.h"
#import "MPTwitterUser.h"

@interface MPTweet : NSObject

@property(nonatomic,readwrite) float textHeight;
@property(nonatomic,readwrite) int favCount, rtCount;
@property(nonatomic,readwrite) BOOL hasMedia, follows,isRetweet,favorited,retweetted;
@property(nonatomic,readwrite) NSString* tweetId,*retweetId,*lat,*longit,*inReplyToUserId,*inReplyToTweetId,*inReplyToUser,*text,*dateString,*userAgent,*lang;
@property(nonatomic, readwrite) NSArray *hashtags;
@property(nonatomic, readwrite) NSMutableArray* urls,*beautyURLs,*extendedURLs,*medias;
@property(nonatomic, readwrite) NSDictionary  *mentions;
@property(nonatomic,readwrite) NSDate* date;
@property(nonatomic,readwrite) MPTwitterUser* user, *retwitter;


-(id)initWithDictionary:(NSDictionary *)dict;

@end
