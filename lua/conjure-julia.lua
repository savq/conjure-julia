local ts_utils = require("nvim-treesitter.ts_utils")

-- For debugging
local function dump(...)
    local objects = vim.tbl_map(vim.inspect, {...})
    print(unpack(objects))
end

-- Return a node into a single string
local function node_to_str(node)
    local text = table.concat(ts_utils.get_node_text(node), "\n")
    --dump(ts_utils.get_node_text(node))
    print(text) --debugging
    return text
end


local function get_root(node)
    node = node or ts_utils.get_node_at_cursor()
    local parent

    while true do
        parent = node:parent()
        if parent:parent() == nil then
            return node_to_str(node)
        end
        node = parent
    end
end

-- Always get the current node
local function get_word(node)
    node = node or ts_utils.get_node_at_cursor()
    if node:child_count() == 0 then
        return node_to_str(node)
    end
end


local function get_parent(node)
    node = node or ts_utils.get_node_at_cursor()
    local parent = node:parent()
    return node_to_str(parent)
end

-- get_expr should "do what I want not what I say":
-- 1. forms => form
-- 2. root atoms => atom
-- 3. non-root atoms => parent
-- This third case should prevent trivial evaluations,
-- instead of `|a| + 1 => a` it should evaluate `|a| + 1 => a + 1`.
local function get_expr()
    local node = ts_utils.get_node_at_cursor()

    if node:child_count() ~= 0 then
        return node_to_str(node)
    else
        return get_parent(node)
    end
end

return {
    get_word = get_word,
    get_expr = get_expr,
    get_parent = get_parent,
    get_root = get_root,
}
