//
//  CounterView.m
//  ObjectiveCMVC
//
//  Created by Angelos Staboulis on 11/1/26.
//

#import "CounterView.h"

@implementation CounterView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = UIColor.systemBackgroundColor;

        _valueLabel = [[UILabel alloc] init];
        _valueLabel.font = [UIFont boldSystemFontOfSize:40];
        _valueLabel.textAlignment = NSTextAlignmentCenter;

        _incrementButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_incrementButton setTitle:@"Increment" forState:UIControlStateNormal];
        _incrementButton.titleLabel.font = [UIFont systemFontOfSize:20];

        [self addSubview:_valueLabel];
        [self addSubview:_incrementButton];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    CGFloat width = self.bounds.size.width;

    self.valueLabel.frame = CGRectMake(0, 150, width, 50);
    self.incrementButton.frame = CGRectMake((width - 200) / 2, 250, 200, 50);
}


@end
