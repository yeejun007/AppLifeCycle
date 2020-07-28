//
//  ViewController.m
//  AppLifeCycle
//
//  Created by 송이준 on 24/07/2020.
//  Copyright © 2020 yeejun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// storyboard를 통해서가 아니라, 수동으로 직접 코딩해서 화면을 만들고싶을때, loadView를 사용한다.
// 정적이 아니라, 동적인 화면을 만들고싶을때 사용함
// loadView를 사용하면 storyboard를 불러들이지 않는다
// 근데 super를 사용해서 loadView를 상속받으면서 초기화를 하면, storyboard를 불러온다..
// 따라서, 완전히 수동으로 화면을 코딩하려면 super를 사용하면 안됨
//-(void)loadView {
////    [super loadView];
//    NSLog(@"loadView");
//}

// viewDidLoad는 앱이 메모리에 올라올때 딱 한번 호출됨.
// 따라서 초기화 코딩은 여기에 해야한다(근데 지금은 이거도 여러번 호출되고있음..왠지는 모름)
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
}

// viewWillAppear는 여러번 호출 가능하다 (화면이 보이기 전 호출됨)
// 화면이 바뀔때마다 계속 호출
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
}

// viewWillAppear는 여러번 호출 가능하다 (화면이 보이고 나서 호출됨)
-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
}

-(void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear");
}


@end
