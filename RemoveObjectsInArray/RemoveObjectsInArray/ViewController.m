//
//  ViewController.m
//  RemoveObjectsInArray
//
//  Created by Dolice on 2013/04/02.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //配列を生成する
  NSMutableArray *myArray;
  myArray = [NSMutableArray arrayWithObjects:
             @"Apple", @"Banana", @"Orange", nil];
  
  //順序付けされたセットを生成する
  NSMutableOrderedSet *orderedSet;
  orderedSet = [NSMutableOrderedSet orderedSetWithArray:myArray];
  
  //複数のオブジェクトを削除する
  NSArray *removeArray = [NSArray arrayWithObjects:
                          @"Apple", @"Banana", nil];
  [myArray removeObjectsInArray:removeArray];
  NSLog(@"myArray: %@", myArray);
  
  [orderedSet removeObjectsInArray:removeArray];
  NSLog(@"orderedSet: %@", orderedSet);
}

@end
