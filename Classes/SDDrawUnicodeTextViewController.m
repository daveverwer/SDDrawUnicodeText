#import "SDDrawUnicodeTextViewController.h"

@implementation SDDrawUnicodeTextViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  CALayer *layer = [CALayer new];
  [layer setNeedsDisplayOnBoundsChange:YES];
  [layer setPosition:CGPointMake(160, 240)];
  [layer setBounds:CGRectMake(0, 0, 100, 40)];
  [layer setDelegate:self];
  [[[self view] layer] addSublayer:layer];
  [layer release]; layer = nil;
}

- (void)drawLayer:(CALayer*)layer inContext:(CGContextRef)ctx {
  CGContextTranslateCTM(ctx, 0, [layer bounds].size.height);
  CGContextScaleCTM(ctx, 1, -1);

  CGContextSetTextDrawingMode(ctx, kCGTextFill);
  
  CGContextSelectFont(ctx, "AmericanTypewriter", 15, kCGEncodingMacRoman);
  CGContextShowTextAtPoint(ctx, 0, 20, "Rønne", 5);

  CGContextSelectFont(ctx, "AmericanTypewriter", 15, kCGEncodingFontSpecific);
  CGContextShowTextAtPoint(ctx, 0, 0, "Rønne", 5);
}

@end
