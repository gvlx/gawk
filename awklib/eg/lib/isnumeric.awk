# isnumeric --- check whether a value is numeric

function isnumeric(x,  f)
{
    switch (typeof(x)) {
    case "strnum":
    case "number":
        return 1
    case "string":
        return (split(x, f, " ") == 1) && (typeof(f[1]) == "strnum")
    default:
        return 0
    }
}

Please note that leading or trailing white space is disregarded in deciding
whether a value is numeric or not, so if it matters to you, you may want
to add an additional check for that.

