#import "RootViewController.h"
@import DeviceID;

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self addDeviceIDLabel];
}

- (void)addDeviceIDLabel {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.text = @"...";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    label.translatesAutoresizingMaskIntoConstraints = NO;

    [NSLayoutConstraint activateConstraints:@[
        [label.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [label.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor]
    ]];
    
    [DeviceID getDeviceID:^(NSString * _Nonnull deviceID) {
        label.text = deviceID;
    }];
}

@end
