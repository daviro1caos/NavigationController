//
//  ViewController.m
//  Navigation Controller
//
//  Created by Daniel on 8/3/16.
//  Copyright © 2016 DanielCompany. All rights reserved.
//

#import "Home.h"


@interface Home ()
@property NSMutableArray *homeArray;

@end

@implementation Home

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view, typically from a nib.
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    self.homeArray   = [[NSMutableArray alloc] initWithObjects: @"Enero", @"Febrero", @"Marzo", @"Abril", nil];
    

}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.homeArray.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 120;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellHome *cell = (cellHome *)[tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellHome" bundle:nil] forCellReuseIdentifier:@"cellHome"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    }
    //Fill cell with info from arrays

    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
