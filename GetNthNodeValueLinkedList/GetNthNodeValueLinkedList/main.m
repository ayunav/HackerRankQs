//
//  main.m
//  GetNthNodeValueLinkedList
//
//  Created by Ayuna Vogel on 3/22/16.
//  Copyright © 2016 Ayuna Vogel. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Node {
    int data;
    struct Node *next;
};

@interface LinkedList : NSObject

@property struct Node *head;

- (struct Node *)append:(int)value;
- (void)printList;

@end



@implementation LinkedList

- (struct Node *)append:(int)value {
    if (self.head == nil) {
        self.head = (struct Node*)malloc(sizeof(struct Node));
        self.head->data = value;
        self.head->next = nil;
    } else {
        struct Node *current = self.head;
        while (current->next != nil) {
            current = current->next;
        }
        struct Node *newNode = (struct Node*)malloc(sizeof(struct Node));
        current->next = newNode;
        newNode->data = value;
        newNode->next = nil;
    }
    return self.head;
}

- (void)printList {
    struct Node *temp = self.head;
    while (temp != nil) {
        printf(" %d", temp->data);
        temp = temp->next;
    }
    printf("\n");
}

@end


struct Node* getNthNodeValue(struct Node *head, int positionFromTail) {
    struct Node *node;
    
    return node;
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LinkedList *list = [[LinkedList alloc]init];
        [list append:1];
        [list append:3];
        [list append:5];
        printf("ListA is ");
        [list printList];
        
 
        
    }
    return 0;
}


