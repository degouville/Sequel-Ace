//
//  LoggingHelper.m
//  Sequel Ace
//
//  Created by James on 10/12/2020.
//  Copyright © 2020 Sequel-Ace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoggingHelper.h"
#import "SPFunctions.h"
@import Firebase;

@implementation LoggingHelper

+ (void)logWithFormat:(NSString *)format, ... {
  va_list args;
  va_start(args, format);
  [self logWithFormat:format arguments:args];
  va_end(args);
}

+ (void)logWithFormat:(NSString *)format arguments:(va_list)args {
	NSString *msg = [[NSString alloc] initWithFormat:format arguments:args];
	[[FIRCrashlytics crashlytics] log:msg];
	SPLog(@"%@", msg);
}
@end

