select
n,
case 
    when p is null then "Root"
    when n in (select distinct p from bst where p is not null) then "Inner"
    else "Leaf"
end
from bst
order by n;
