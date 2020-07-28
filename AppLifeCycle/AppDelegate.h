//
//  AppDelegate.h
//  AppLifeCycle
//
//  Created by 송이준 on 24/07/2020.
//  Copyright © 2020 yeejun. All rights reserved.
//

#import <UIKit/UIKit.h>
// class 상속 계층도
// NSObject > UIResponder > UIViewController > UIView

@interface AppDelegate : UIResponder <UIApplicationDelegate>
// 이전 버전의 라이프사이클을 사용하기 위해 프로퍼티를 추가하고 implementation파일에 synthesize 걸어줌
// https://stackoverflow.com/questions/56508764/app-delegate-methods-arent-being-called-in-ios-13 참고
// info.plist에서 "Application Scene Manifest"를 삭제했음
// 윈도우 속성을 수동으로 추가해주었다 
@property (strong, nonatomic) UIWindow *window;

@end


