//
//  CounterView.h
//  ObjectiveCMVC
//
//  Created by Angelos Staboulis on 11/1/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CounterView : UIView
@property (nonatomic, strong) UILabel *valueLabel;
@property (nonatomic, strong) UIButton *incrementButton;
@end

NS_ASSUME_NONNULL_END
