typedef struct node node;
node* ll_create(rpl_parent_t* data,node* next);
node* ll_prepend(node* head,rpl_parent_t* data);
rpl_parent_t* ll_count(node *head);
node* ll_append(node* head, rpl_parent_t* data);
node* ll_insert_after(node *head, rpl_parent_t* data, node* prev);
node* ll_remove_front(node* head);
node* ll_remove_back(node* head);
node* ll_remove_any(node* head,node* nd);
