# TCTitleLoading
This is a loading in the bottom of navigation bar title area.
This project is inspired by [XHLoadingNavigationItemTitleView](https://github.com/JackTeam/XHLoadingNavigationItemTitleView)


##How To Get Started

1. Add files in folder TCTitleLoading to your project.
2. In your Appdelegate.m, import TCTitleLoadingManager and set custom color, you can skip this step if you want to use the default black color:

```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    //Set custom color for dots
    [TCTitleLoadingManager setDotColor:[UIColor orangeColor]];
    return YES;
}
```

3.Start the loading by calling method startAnimationTitle in your view controller:

```
[self startAnimationTitle];
```

4.Start the loading by calling method startAnimationTitle in your view controller:

```
[self stopAnimationTitle];
```
5.If you want to skip the title loading for some pages, just tell the manager:

```
[TCTitleLoadingManager SkipTitleLoadingForClass:[self class]];
```

Thanks
---
This project is inspired by [XHLoadingNavigationItemTitleView](https://github.com/JackTeam/XHLoadingNavigationItemTitleView).
The dot loading view is [TYDotIndicatorView](https://github.com/itouch2/TYDotIndicatorView) 

LICENSE
---
Distributed under the MIT License.

Author
---
If you wish to contact me, email at: chuchuanming@gmail.com