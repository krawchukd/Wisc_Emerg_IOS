//
//  KitListOptionsTableViewController.m
//  Emergency_Wisconsin_IOS
//
//  Created by David Krawchuk on 4/12/15.
//  Copyright (c) 2015 UniversityOfWisconsinParkside. All rights reserved.
//

#import "KitListOptionsTableViewController.h"

@interface KitListOptionsTableViewController ()
@property (nonatomic, strong) NSArray *arrayOfKitListOptions;
@property (nonatomic, strong) NSDictionary *textAttributes;
@end

@implementation KitListOptionsTableViewController

#pragma mark - Setter/Getter

- (NSArray *)arrayOfKitListOptions{
    if (!_arrayOfKitListOptions) {
        _arrayOfKitListOptions = [NSArray arrayWithObjects: @{TITLE : BUILD_A_KIT_TITLE, IMAGE : [UIImage imageNamed:BUILD_A_KIT_IMAGE_NAME]},
                                   @{TITLE : MAKE_A_PLAN_TITLE, IMAGE : [UIImage imageNamed:MAKE_A_PLAN_IMAGE_NAME]},
                                   @{TITLE : VOLUNTEER_TITLE, IMAGE : [UIImage imageNamed:VOLUNTEER_IMAGE_NAME]},
                                   @{TITLE : CUSTOM_LIST_TITLE, IMAGE : [UIImage imageNamed:CUSTOM_LIST_IMAGE_NAME]}, nil];
    }
    return _arrayOfKitListOptions;
}

- (NSDictionary *)textAttributes {
    if (!_textAttributes) {
        UIFont *font = [UIFont boldSystemFontOfSize:16.0];
        UIColor *fontColor = [UIColor blackColor];
        _textAttributes = @{NSFontAttributeName : font, NSForegroundColorAttributeName : fontColor};
    }
    return _textAttributes;
}

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.arrayOfKitListOptions.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"kitListCell" forIndexPath:indexPath];
    
    NSDictionary *dictionaryRow = self.arrayOfKitListOptions[indexPath.row];
    
    // Configure the cell...
    cell.imageView.image = dictionaryRow[IMAGE];
    cell.textLabel.attributedText = [[NSAttributedString alloc] initWithString:dictionaryRow[TITLE]
                                                                    attributes:self.textAttributes];
    
    return cell;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
