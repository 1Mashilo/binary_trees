#include "binary_trees.h"

/**
 * @brief Creates a new binary tree node
 *
 * This function dynamically allocates memory for a new binary tree node,
 * initializes its fields, and returns a pointer to the newly created node.
 *
 * @param parent: Pointer to the parent node of the new node
 * @param value: Integer value to store in the new node
 * @return Pointer to the newly created node, or NULL on failure
 */
binary_tree_t *binary_tree_node(binary_tree_t *parent, int value)
{
    binary_tree_t *new_node;

    new_node = malloc(sizeof(binary_tree_t));
    if (!new_node) {
        return (NULL);
    }

    new_node->n = value;
    new_node->parent = parent;
    new_node->left = NULL;
    new_node->right = NULL;

    return (new_node);
}
