//
//  TableViewController.m
//  Bloggy
//
//  Created by Anthony Armstrong on 6/3/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import "TableViewController.h"
#import "BlogPostsContainer.h"
#import "BlogPost.h"

@interface TableViewController ()

@property (nonatomic,strong)NSArray *individualPosts;

@end

@implementation TableViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //_postsContainter = [[BlogPostsContainer alloc]init];
    
    self.individualPosts = [[[BlogPostsContainer alloc]init] returnedPosts:[BlogPostsContainer getPosts]];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return [self.individualPosts count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];

    BlogPost *p = [self.individualPosts objectAtIndex:indexPath.row];
    cell.textLabel.text = p.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@", p.author, p.createFormattedDate];

    //Get the image data from the URL in the BlogPost object
    //Debugging - Use the line of code below to verify the class of the object in thumbnailURL
    //
    // NSLog(@"class of thumbnailURL: %@", p.thumbnailURL.class);
    //
    //Now, check the class of the thumbnail object. If it's what we expect,
    //display the thumbnail, otherwise default to the backup image.

    if([p.thumbnailURL.class isEqual:[NSURL class]]){
        NSData *imageData = [NSData dataWithContentsOfURL:p.thumbnailURL];
        cell.imageView.image = [[UIImage alloc] initWithData:imageData];
    } else {
        cell.imageView.image = [UIImage imageNamed:@"treehouse"];
    }

    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
