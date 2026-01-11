//
//  ViewController.m
//  ObjectiveCMVC
//
//  Created by Angelos Staboulis on 11/1/26.
//

#import "ViewController.h"
#import "Counter.h"
#import "CounterView.h"
@interface ViewController ()
@property (nonatomic, strong) Counter *counter;
@property (nonatomic, strong) CounterView *counterView;

@end

@implementation ViewController

- (void)loadView {
    self.counterView = [[CounterView alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.view = self.counterView;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"MVC Counter";
    self.counter = [[Counter alloc] init];

    [self updateLabel];

    [self.counterView.incrementButton addTarget:self
                                          action:@selector(didTapIncrement)
                                forControlEvents:UIControlEventTouchUpInside];
}

- (void)didTapIncrement {
    [self.counter increment];
    [self updateLabel];
}

- (void)updateLabel {
    self.counterView.valueLabel.text =
        [NSString stringWithFormat:@"%ld", (long)self.counter.value];
}
@end
