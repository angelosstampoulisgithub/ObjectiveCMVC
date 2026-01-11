//
//  Counter.h
//  ObjectiveCMVC
//
//  Created by Angelos Staboulis on 11/1/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Counter : NSObject
@property NSInteger value;

-(void) increment;
-(void)reset;
@end

NS_ASSUME_NONNULL_END
