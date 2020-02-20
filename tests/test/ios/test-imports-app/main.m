#import "Header.h"
#import <TestImports-App/Header.h>

#ifdef __IPHONE_OS_VERSION_MIN_REQUIRED
@import UIKit;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic, strong) UIWindow *window;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)__unused application didFinishLaunchingWithOptions:(NSDictionary *)__unused launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [UIViewController new];
    self.window.rootViewController.view.backgroundColor = UIColor.whiteColor;

    [self.window makeKeyAndVisible];

    return YES;
}

@end

int main(int argc, char *argv[])
{
    @autoreleasepool
    {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

#else
int main() {}
#endif
