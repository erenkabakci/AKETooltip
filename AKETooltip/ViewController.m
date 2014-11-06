//
//  ViewController.m
//  AKETooltip
//
//  Created by Eren Kabakci on 04/11/14.
//  Copyright (c) 2014 Akeara. All rights reserved.
//

#import "ViewController.h"
#import "AKETooltip.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *topLeftButton;
@property (weak, nonatomic) IBOutlet UIButton *topRightButton;
@property (weak, nonatomic) IBOutlet UIButton *bottomLeftButton;
@property (weak, nonatomic) IBOutlet UIButton *bottomRightButton;
@property (weak, nonatomic) IBOutlet UIButton *defaultButton;
@property (weak, nonatomic) IBOutlet UIButton *withoutShadowButton;

@property (strong, nonatomic) AKETooltip *tooltip;
@property (strong, nonatomic) UIView *testView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.testView = [UIView new];
    
    [self.topLeftButton addTarget:self action:@selector(topLeftButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.topRightButton addTarget:self action:@selector(topRightButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.bottomLeftButton addTarget:self action:@selector(bottomLeftButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.bottomRightButton addTarget:self action:@selector(bottomRightButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.defaultButton addTarget:self action:@selector(defaultButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.withoutShadowButton addTarget:self action:@selector(withoutShadowButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)topLeftButtonTapped:(UIButton *)sender
{
    self.testView.frame = CGRectMake(0.0f, 0.0f, 300.0f, 50.0f);
    self.testView.backgroundColor = [UIColor blueColor];
    
    self.tooltip = [[AKETooltip alloc] initWithContentView:self.testView sourceRect:sender.frame parentWindow:self.view.window];
    [self.tooltip show];
}

- (void)topRightButtonTapped:(UIButton *)sender
{
    self.testView.frame = CGRectMake(0.0f, 0.0f, 200.0f, 60.0f);
    self.testView.backgroundColor = [UIColor redColor];
    
    self.tooltip = [[AKETooltip alloc] initWithContentView:self.testView sourceRect:sender.frame parentWindow:self.view.window];
    self.tooltip.arrowColor = [UIColor purpleColor];
    [self.tooltip show];
}

- (void)bottomLeftButtonTapped:(UIButton *)sender
{
    self.testView.frame = CGRectMake(0.0f, 0.0f, 100.0f, 120.0f);
    self.testView.backgroundColor = [UIColor yellowColor];
    
    self.tooltip = [[AKETooltip alloc] initWithContentView:self.testView sourceRect:sender.frame parentWindow:self.view.window];
    self.tooltip.arrowColor = [UIColor blueColor];
    self.tooltip.borderColor = [UIColor orangeColor];
    [self.tooltip show];
}

- (void)bottomRightButtonTapped:(UIButton *)sender
{
    self.testView.frame = CGRectMake(0.0f, 0.0f, 50.0f, 50.0f);
    self.testView.backgroundColor = [UIColor orangeColor];
    
    self.tooltip = [[AKETooltip alloc] initWithContentView:self.testView sourceRect:sender.frame parentWindow:self.view.window];
    self.tooltip.arrowColor = [UIColor redColor];
    [self.tooltip show];
}

- (void)defaultButtonTapped:(UIButton *)sender
{
    self.testView.frame = CGRectMake(0.0f, 0.0f, 200.0f, 75.0f);
    self.testView.backgroundColor = [UIColor orangeColor];
    
    self.tooltip = [[AKETooltip alloc] initWithContentView:self.testView sourceRect:sender.frame parentWindow:self.view.window];
    self.tooltip.arrowColor = [UIColor orangeColor];
    [self.tooltip show];
}

- (void)withoutShadowButtonTapped:(UIButton *)sender
{
    self.testView.frame = CGRectMake(0.0f, 0.0f, 200.0f, 60.0f);
    self.testView.backgroundColor = [UIColor purpleColor];
    
    self.tooltip = [[AKETooltip alloc] initWithContentView:self.testView sourceRect:sender.frame parentWindow:self.view.window];
    self.tooltip.hideShadow = YES;
    self.tooltip.arrowColor = [UIColor purpleColor];
    [self.tooltip show];
}

@end
