//
//  hidekeyboardViewController.h
//  hidekeyboard
//
//  Created by MacOSX on 9/15/14.
//  Copyright (c) 2014 Erin Dunphy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface hidekeyboardViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView;
@property (weak, nonatomic) IBOutlet UITextField *TxtFirst;
@property (weak, nonatomic) IBOutlet UITextField *TxtSecond;
@property (weak, nonatomic) IBOutlet UITextField *TxtThird;
@property (weak, nonatomic) IBOutlet UITextField *TxtFourth;
@property (weak, nonatomic) IBOutlet UITextField *TxtFifth;
-(IBAction) doneEditing:(id) sender;
@end
