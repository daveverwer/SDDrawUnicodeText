#import <UIKit/UIKit.h>

@class SDDrawUnicodeTextViewController;

@interface SDDrawUnicodeTextAppDelegate : NSObject <UIApplicationDelegate> {
  UIWindow *window;
  SDDrawUnicodeTextViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SDDrawUnicodeTextViewController *viewController;

@end

