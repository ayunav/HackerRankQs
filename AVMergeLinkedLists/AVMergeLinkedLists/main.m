//
//  main.m
//  AVMergeLinkedLists
//
//  Created by Ayuna Vogel on 3/19/16.
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

struct Node* mergeLists(struct Node *headA, struct Node *headB) {
    struct Node *nodeC = NULL;
    
    if (headA == NULL) {
        return headB;
    } else if (headB == NULL) {
        return headA;
    }
    
    printf("headA is %d \n", headA->data);
    printf("headB is %d \n\n", headB->data);
    
    if (headA->data <= headB->data) {
        nodeC = headA;
        //        printf("nodeC = headA is %d \n", nodeC->data);
        
        nodeC->next = mergeLists(headA->next, headB);
    } else if (headA->data > headB->data) {
        nodeC = headB;
        //        printf("nodeC = headB is %d \n", nodeC->data);
        nodeC->next = mergeLists(headA, headB->next);
    }
    
    return nodeC;
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LinkedList *listA = [[LinkedList alloc]init];
        [listA append:1];
        [listA append:3];
        [listA append:5];
        printf("ListA is ");
        [listA printList];
        
        
        LinkedList *listB = [[LinkedList alloc]init];
        [listB append:2];
        [listB append:4];
        [listB append:7];
        printf("ListB is ");
        [listB printList];
        
        
        mergeLists(listA.head, listB.head);
        printf("ListA is ");
        [listA printList];
        printf("ListB is ");
        [listB printList];
        
    }
    return 0;
}


