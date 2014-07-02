//
//  TableViewController2.m
//  New
//
//  Created by itisioslab on 01.07.14.
//  Copyright (c) 2014 itisioslab. All rights reserved.
//

#import "TableViewController2.h"
#import "ViewController2.h"

@interface TableViewController2 ()
{
    NSArray *listOfObjects;
    NSArray *listOfpics;
}

@end

@implementation TableViewController2

- (void)viewDidLoad
{
    [super viewDidLoad];
    
  listOfObjects = [NSArray arrayWithObjects: @"Kate", @"Liza", @"Mary", @"Sandra", @"Sisi", nil];
    listOfpics = [NSArray arrayWithObjects: @"131014154.jpg", @"1273635610_031_13771_032.jpg", @"imagesnio.jpg", @"Unknown.jpg", @"beautiful_faces_45.jpg", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return listOfObjects.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentifier2" forIndexPath:indexPath];
    
    
    // Configure the cell...
    cell.textLabel.text = [listOfObjects objectAtIndex: indexPath.row];
    NSString *myName = [listOfpics objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:myName];
    return cell;
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController2 *VC = [[ViewController2 alloc] init];
    VC = [segue destinationViewController];
    NSIndexPath *InexPath = [self.tableView indexPathForSelectedRow];
    NSString *myName = [listOfpics objectAtIndex:InexPath.row];
    VC.value = [listOfObjects objectAtIndex:InexPath.row];
    VC.wom = [listOfpics objectAtIndex:InexPath.row];
}


@end
