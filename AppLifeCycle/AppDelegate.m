//
//  AppDelegate.m
//  AppLifeCycle
//
//  Created by 송이준 on 24/07/2020.
//  Copyright © 2020 yeejun. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize window;

// 초기화 메소드(최초 한번 실행됨)
- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"willFinishLaunchingWithOptions");
    return YES;
}

// 초기화 메소드(최초 한번 실행됨)
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"didFinishLaunchingWithOptions");
    return YES;
}

// applicationDidBecomeActive는 앱을 잠시 아래로 내렸다가 다시 띄워도 재실행된다. 즉 초기화 메소드가 아님
- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"applicationDidBecomeActive");
}

// 앱이 백그라운드로 넘어가지 않고 비활서화만 되는 경우 실행됨
// ex) 앱 실행중에 갑자기 전화가 오는경우
-(void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"applicationWillResignActive");
}

// 홈 버튼을 눌러서 앱이 백그라운드로 넘어간 경우 실행됨
// 백그라운드로 넘어간 앱은 suspended 상태가 된다
// 이떄 이 앱은 잠시 중단 상태일뿐 여전히 메모리를 차지하고 있음
// 백그라운드로 넘어갔을때 그동안의 작업내용이 DB에 저장되던가 하는 등의 로직이 일어나야 한다.
// ios는 메모리가 부족하면 랜덤으로 백그라운드에서 중지상태인 앱을 아무거나 날려버린다.
-(void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"applicationDidEnterBackground");
}


// 앱이 백그라운드에서 다시 foreground로 넘어오면 실행되는 메소드임 
- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"applicationWillEnterForeground");
}

-(void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"applicationWillTerminate");
}




// IOS 13버전부터 적용된 새로운 라이프사이클이 UISceneSession이다
// 앱 하나에 대한 라이프사이클 관리가 아니라, scene별로 라이프사이클을 관리함
// 아이패드에서 하나의 앱을 동시에 두개 띄울 수 있다
// 즉 앱과 독립적으로 라이프사이클을 관리함
#pragma mark - UISceneSession lifecycle


//- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
//    // Called when a new scene session is being created.
//    // Use this method to select a configuration to create the new scene with.
//    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
//}


//- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
//    // Called when the user discards a scene session.
//    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//}


@end
