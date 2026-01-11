//
//  Counter.m
//  ObjectiveCMVC
//
//  Created by Angelos Staboulis on 11/1/26.
//

#import "Counter.h"

@implementation Counter
- (instancetype)init {
    self = [super init];
    if (self) {
        _value = 0;
    }
    return self;
}

- (void)increment {
    self.value += 1;
}

- (void)reset {
    self.value = 0;
}

@end
