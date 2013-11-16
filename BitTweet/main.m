//
//  main.cpp
//  BitTweet
//
//  Created by MPow on 13/11/13.
//  Copyright (c) 2013 MPow. All rights reserved.
//

#include <Foundation/Foundation.h>
#include <Accounts/Accounts.h>
#include <Social/Social.h>
#include "MPTweet.h"


NSArray* timeline;

void displayTweet();


int main(int argc, const char * argv[])
{
    
    ACAccountStore *accountStore = [[ACAccountStore alloc] init];
    ACAccountType *accountType = [accountStore
                                  accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];
    [accountStore
     requestAccessToAccountsWithType:accountType
     options:NULL
     completion:^(BOOL granted, NSError *error) {
         if (granted) {
         
             SLRequest* request=[SLRequest requestForServiceType:SLServiceTypeTwitter requestMethod:SLRequestMethodGET URL:[NSURL URLWithString:@"https://api.twitter.com/1.1/statuses/home_timeline.json"] parameters:nil];
             request.account=[[accountStore accountsWithAccountType:accountType] lastObject];
             [request performRequestWithHandler:^(NSData *responseData, NSHTTPURLResponse *urlResponse, NSError *error) {
                 if (responseData) {
                     timeline=[NSJSONSerialization
                               JSONObjectWithData:responseData
                               options:NSJSONReadingAllowFragments error:nil];
                     displayTweet();
                 }else printf("\nerror");
             }];
             
         }else printf("\nAccess Denied, can't do request");
     }];
    
    dispatch_semaphore_wait(dispatch_semaphore_create(0), DISPATCH_TIME_FOREVER);
    
    return 0;
}


void displayTweet(){
    NSInteger cursor=0;
    while (cursor<timeline.count) {
        MPTweet* tweet=[[MPTweet alloc] initWithDictionary:[timeline objectAtIndex:cursor]];
        cursor++;
        printf("\n%s @%s   %s %i %s %i %s\n--------------\n%s\n",[tweet.user.name UTF8String],[tweet.user.username UTF8String],[tweet.dateString UTF8String],tweet.rtCount,[@"RT" UTF8String],tweet.favCount,[@"FAV" UTF8String],[tweet.text UTF8String]);
        
        char anyChar;
        scanf("%c",&anyChar);
    }
    
}
