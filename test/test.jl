# Type declaration
struct Point{T<:Number}
    x::T
    y::T
end

# Function definition
function foo(bar)
    x = 1
    return bar + x + 1      # TODO: evaluating return should send the return value without the `return` keyword
end

# short-function definition
dist(u::Point, v::Point) = √((v.x - u.x)^2 + (v.y - u.y)^2)


# function call 
# TODO: `argumentlist` it should return the whole function
foo(5)


# Array definition
x = [1, 2, 3]

# Array indexing 
# TODO: Should ranges return the parent node???
x[1:end]


# Let block
y = let a = 6
    a * 32 + 1
end


# Pipes and lambdas
"Hello world" |>
    split |>
    x -> reverse.(x)

# TODO:
# Modules: evaluating a root should not evaluate the whole module, that'd be weird
# add more stuff
