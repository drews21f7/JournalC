//
//  EntryDetailViewController.m
//  JournalC
//
//  Created by Drew Seeholzer on 7/1/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"
#import "Entry.h"

@interface EntryDetailViewController ()<UITextFieldDelegate>





@property (weak, nonatomic) IBOutlet UITextField *entryTitleField;
@property (weak, nonatomic) IBOutlet UITextView *entryTextView;

@end

@implementation EntryDetailViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWith:_entry];
    // Do any additional setup after loading the view.
}
- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    if (_entry != nil) {
        [EntryController.sharedInstance updateEntry:_entry title:_entryTitleField.text bodyText:_entryTextView.text];
    } else {
        NSString * title = _entryTitleField.text;
        NSString * bodyText = _entryTextView.text;
        [EntryController.sharedInstance addEntry:title bodyText:bodyText];
    }
    
    [self.navigationController popToRootViewControllerAnimated:true];
}
- (IBAction)clearButtonTapped:(UIButton *)sender {
    _entryTitleField.text = @"";
    _entryTextView.text = @"";
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [_entryTitleField resignFirstResponder];
    return true;
}

-(void)updateWith:(Entry *)entry {
    if (entry == entry) {
        _entryTitleField.text = entry.title;
        _entryTextView.text = entry.bodyText;
}
    

//- (void)removeEntry:(Entry *)entry {
//    [_entries removeObject:entry];
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
}
@end
