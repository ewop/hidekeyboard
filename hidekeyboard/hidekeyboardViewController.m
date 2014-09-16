//
//  hidekeyboardViewController.m
//  hidekeyboard
//
//  Created by MacOSX on 9/15/14.
//  Copyright (c) 2014 Erin Dunphy. All rights reserved.
//

#import "hidekeyboardViewController.h"

@interface hidekeyboardViewController ()

@end

@implementation hidekeyboardViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    CGSize size = [self getScreenSize];
    self.ScrollView .frame = CGRectMake(0, 50, size.width, size.height);
    //[self.Scrollview  setContentSize:CGSizeMake(320, 1064)];
}
-(void)dismissKeyboard {
    // add textfields and textviews
    //[Nameofoutletlikeatextfield resignFirstResponder];
    [self.TxtFirst resignFirstResponder];
    [self.TxtSecond resignFirstResponder];
    [self.TxtThird resignFirstResponder];
    [self.TxtFourth resignFirstResponder];
    [self.TxtFifth resignFirstResponder];
}
-(IBAction) doneEditing:(id) sender {
    [sender resignFirstResponder];
}
- (CGSize)getScreenSize
{
    //Get Screen size
    CGSize size;
    if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation) && [[UIScreen mainScreen] bounds].size.height > [[UIScreen mainScreen] bounds].size.width) {
        // in Landscape mode, width always higher than height
        size.width = [[UIScreen mainScreen] bounds].size.height;
        size.height = [[UIScreen mainScreen] bounds].size.width;
    } else if (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation) && [[UIScreen mainScreen] bounds].size.height < [[UIScreen mainScreen] bounds].size.width) {
        // in Portrait mode, height always higher than width
        size.width = [[UIScreen mainScreen] bounds].size.height;
        size.height = [[UIScreen mainScreen] bounds].size.width;
    } else {
        // otherwise it is normal
        size.height = [[UIScreen mainScreen] bounds].size.height;
        size.width = [[UIScreen mainScreen] bounds].size.width;
    }
    return size;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [self.ScrollView setContentOffset:scrollPoint animated:YES];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self.ScrollView setContentOffset:CGPointZero animated:YES];
}
- (void)textViewDidBeginEditing:(UITextView *)textView {
    CGPoint scrollPoint = CGPointMake(0, textView.frame.origin.y);
    [self.ScrollView  setContentOffset:scrollPoint animated:YES];
}
- (void)textViewDidEndEditing:(UITextView *)textView {
    [self.ScrollView  setContentOffset:CGPointZero animated:YES];
}
- (IBAction)btnView:(id)sender {
    //hide keyboard
    [self dismissKeyboard];
    //load voew
//    CGPoint scrollPoint = CGPointMake(0, self.btnBack.frame.origin.y);
//    [self.ScrollView  setContentOffset:scrollPoint animated:YES];
}

@end
