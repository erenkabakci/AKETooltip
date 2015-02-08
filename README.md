AKETooltip
==========

UIPopover/Tooltip alternative for applications. Customisable and supports UIPopover features.

Usage
=====

See Demo_App for different scenarios.

## Presentation

AKETooltip is easy to use, works similar to UIPopover. Calculates its own frame dynamically according to content view inside. Aligns arrow and content view according to anchor point to satisfy best UX.

Constructor needs three parameters to initalize.
- `contentView` The view to be shown inside tooltip. Give any object inherited from UIView. Tooltip adjusts its size according to contentView's bounds.
- `sourceRect` Anchor point for tooltip. Present tooltip from this given frame. Easy to use with IBOutlet actions with sender's frame.
- `parentWindow` Window to show tooltip. This allows to use tooltip outside views (e.g Present from navigation bar).

#### Public Properties
- `BOOL hideShadow` Used for showing drape shadow. Default is NO.
- `arrowColor` Used for changing arrow color for tooltip.
- `borderColor` Used for changing border color for tooltip.

#### Using AKETooltip

```objective-c
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 100.0f, 100.0f)];
    testView.backgroundColor = [UIColor yellowColor];
    
  
    AKETooltip *tooltip = [[AKETooltip alloc] initWithContentView:testView sourceRect:paramFrame parentWindow:paramWindow];
    
    tooltip.hideShadow = YES;
    tooltip.arrowColor = [UIColor blueColor];
    tooltip.borderColor = [UIColor orangeColor];
  
    [tooltip show];
```

### Presenting AKETooltip from Navigation Bar

In order to present AKETooltip from navigation bar properly, we need frame conversion. Simply convert `sourceRect` frame to tooltip's frame.

```objective-c
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 100.0f, 100.0f)];
    testView.backgroundColor = [UIColor yellowColor];
    
    CGRect intendedRect = [button.superview convertRect:senderButton.frame toView:self.view];
  
    AKETooltip *tooltip = [[AKETooltip alloc] initWithContentView:testView sourceRect:intendedRect parentWindow:paramWindow];
    
    tooltip.hideShadow = YES;
    tooltip.arrowColor = [UIColor blueColor];
    tooltip.borderColor = [UIColor orangeColor];
  
    [tooltip show];
```
