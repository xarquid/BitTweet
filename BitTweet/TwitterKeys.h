//
//  TwitterKeys.h
//  aleaf
//
//  Created by MPow on 05/10/13.
//  Copyright (c) 2013 MPow. All rights reserved.
//

#ifndef aleaf_TwitterKeys_h
#define aleaf_TwitterKeys_h



#pragma mark - Timeline
static const NSString* tmCountKey=@"count";
static const NSString* tmMaxIdKey=@"max_id"; // return tweets older that that
static const NSString* tmSinceIdKey=@"since_id"; // return newer tweets

#pragma mark - cache
static const NSString* cacheProfilePicKey=@"profilePic";
static const NSString* cacheUserProfilePicKey=@"UserprofilePic";
static const NSString* cacheUserBannerKey=@"UserBanner";


#pragma mark - tweet
static const NSString* dateKey=@"created_at";
static const NSString* favoriteCount=@"favorite_count";
static const NSString* retweetCount=@"retweet_count";
static const NSString* inReplyToStatusId=@"in_reply_to_status_id_str";
static const NSString* inReplyToUserId=@"in_reply_to_user_id_str";
static const NSString* userAgent=@"source";


#pragma mark - User

static const NSString* userKey=@"user";
static const NSString* idKey=@"id_str";
static const NSString* nameKey=@"name";
static const NSString* usernameKey=@"screen_name";
static const NSString* textKey=@"text";
static const NSString* profileImageUrlKey=@"profile_image_url";
static const NSString* profileCoverUrlKey=@"profile_banner_url";
static const NSString* descriptionKey=@"description";
static const NSString* entities=@"entities";
static const NSString* urlArray=@"urls";
static const NSString* url=@"url";
static const NSString* displayUrl=@"display_url";
static const NSString* expandedUrl=@"expanded_url";
static const NSString* favCount=@"favourites_count";
static const NSString* location=@"location";
static const NSString* listedCount=@"listed_count";
static const NSString* statusesCount=@"statuses_count";
static const NSString* followingCount=@"friends_count";
static const NSString* followersCount=@"followers_count";


#pragma mark oauth

static const NSString* oauth=@"oauth";
static const NSString* oauthSecret=@"oauthSecret";

#endif
