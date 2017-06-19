#include "custom_linked_list.h"

typedef struct node {
	rpl_parent_t* data;
    struct node* next;
};

node* ll_create(rpl_parent_t* data,node* next)
{
    node* new_node = (node*)malloc(sizeof(node));
    if(new_node == NULL)
    {
        printf("Error creating a new node.\n");
        exit(0);
    }
    new_node->data = data;
    new_node->next = next;

    return new_node;
}

node* ll_prepend(node* head,rpl_parent_t* data)
{
    node* new_node = create(data,head);
    head = new_node;
    return head;
}

rpl_parent_t* ll_count(node *head)
{
    node *cursor = head;
    rpl_parent_t* c = 0;
    while(cursor != NULL)
    {
        c++;
        cursor = cursor->next;
    }
    return c;
}


node* ll_append(node* head, rpl_parent_t* data)
{
    /* go to the last node */
    node *cursor = head;
    while(cursor->next != NULL)
        cursor = cursor->next;

    /* create a new node */
    node* new_node =  create(data,NULL);
    cursor->next = new_node;

    return head;
}

/*
    insert a new node after the prev node
*/
node* ll_insert_after(node *head, rpl_parent_t* data, node* prev)
{
    /* find the prev node, starting from the first node*/
    node *cursor = head;
    while(cursor != prev)
        cursor = cursor->next;

    if(cursor != NULL)
    {
        node* new_node = create(data,cursor->next);
        cursor->next = new_node;
        return head;
    }
    else
    {
        return NULL;
    }
}

node* ll_remove_front(node* head)
{
    if(head == NULL)
        return NULL;
    node *front = head;
    head = head->next;
    front->next = NULL;
    /* is this the last node in the list */
    if(front == head)
        head = NULL;
    free(front);
    return head;
}

node* ll_remove_back(node* head)
{
    if(head == NULL)
        return NULL;

    node *cursor = head;
    node *back = NULL;
    while(cursor->next != NULL)
    {
        back = cursor;
        cursor = cursor->next;
    }
    if(back != NULL)
        back->next = NULL;

    /* if this is the last node in the list*/
    if(cursor == head)
        head = NULL;

    free(cursor);

    return head;
}

node* ll_remove_any(node* head,node* nd)
{
    /* if the node is the first node */
    if(nd == head)
    {
        head = remove_front(head);
        return head;
    }

    /* if the node is the last node */
    if(nd->next == NULL)
    {
        head = remove_back(head);
        return head;
    }

    /* if the node is in the middle */
    node* cursor = head;
    while(cursor != NULL)
    {
        if(cursor->next == nd) // was =
            break;
        cursor = cursor->next;
    }

    if(cursor != NULL)
    {
        node* tmp = cursor->next;
        cursor->next = tmp->next;
        tmp->next = NULL;
        free(tmp);
    }
    return head;
}
