#import <Foundation/Foundation.h>

%hook NSBundle

- (NSString *)localizedStringForKey:(NSString *)key
                               value:(NSString *)value
                               table:(NSString *)tableName
{
    if ([key isEqualToString:@"AWAY_LOCK_LABEL"]) {
        return @"slide to uwu";
    }

    return %orig;
}

%end

%ctor {
    @autoreleasepool {
        NSString *processName = [[NSProcessInfo processInfo] processName];

        if ([processName isEqualToString:@"SpringBoard"]) {
            %init;
        }
    }
}