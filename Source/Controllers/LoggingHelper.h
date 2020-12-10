//
//  LoggingHelper.h
//  sequel-ace
//
//  Created by James on 10/12/2020.
//  Copyright © 2020 Sequel-Ace. All rights reserved.
//

#ifndef Logging_h
#define Logging_h

@interface LoggingHelper : NSObject

+ (void)logWithFormat:(NSString *)format, ... ;
+ (void)logWithFormat:(NSString *)format arguments:(va_list)args;

@end

#endif /* Logging_h */
