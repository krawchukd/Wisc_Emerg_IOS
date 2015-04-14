//
//  ResourcesMenuTableViewController.m
//  Emergency_Wisconsin_IOS
//
//  Created by David Krawchuk on 4/12/15.
//  Copyright (c) 2015 UniversityOfWisconsinParkside. All rights reserved.
//

#import "ResourcesMenuTableViewController.h"

@interface ResourcesMenuTableViewController ()
@property (nonatomic, strong) NSArray *arrayOfResourceItems;
@property (nonatomic, strong) NSDictionary *textAttributes;
@end

@implementation ResourcesMenuTableViewController

#pragma mark - Setter/Getter
- (NSArray *)arrayOfResourceItems {
    if (!_arrayOfResourceItems) {
        _arrayOfResourceItems = [NSArray arrayWithObjects: @{TITLE : BE_PREPAIRED_TITLE, COLOR : BE_PREPAIRED_COLOR},
                                 @{TITLE : EMERGENCY_TITLE, COLOR : EMERGENCY_COLOR},
                                 @{TITLE : DISASTER_RESOURCES_TITLE, COLOR : DISASTER_RESOURCES_COLOR},
                                 @{TITLE : TYPES_OF_DISASTERS_TITLE, COLOR : TYPES_OF_DISASTERS_COLOR},
                                 nil];
    }
    return _arrayOfResourceItems;
}
- (NSDictionary *)textAttributes {
    if (!_textAttributes) {
        UIFont *font = [UIFont boldSystemFontOfSize:16.0];
        UIColor *fontColor = [UIColor whiteColor];
        _textAttributes = @{NSFontAttributeName : font, NSForegroundColorAttributeName : fontColor};
    }
    return _textAttributes;
}

#pragma mark - Lifecycle

- (instancetype)init
{
    if (self = [super init]) {
        
    }
    return self;
}

- (void)setup {
    
}

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
    return self.arrayOfResourceItems.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"resourceMenuCell" forIndexPath:indexPath];
    
    NSDictionary *dictionaryOfRowAttributes = self.arrayOfResourceItems[indexPath.row];
    
    // Configure the cell...
    cell.textLabel.attributedText = [[NSAttributedString alloc] initWithString:dictionaryOfRowAttributes[@"title"]
                                                                    attributes:self.textAttributes];
    cell.backgroundColor = dictionaryOfRowAttributes[@"color"];
    
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"segueToKitListOptions"]) {
        if ([segue.destinationViewController isKindOfClass:[UINavigationController class]]) {
            NSLog(@"");
        }
    }
}


@end
