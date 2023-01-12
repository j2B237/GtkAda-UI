-- TASK : the goal is to input a string and the integer 75000, from graphical user interface.
-- Author: BINYOUM Joseph
-- Date : 2022/18/12
-- Dependencies: GtkAda

-- Note:
-- Inside doc folder you can find the code architecture used to implement this widget.


-- Why this system's architecture ?
-- because the solution on "https://rosettacode.org/wiki/User_input/Graphical#Ada"
-- has an error : subprogram must not be deeper than access type 
-- Meanning that :
-- "" 
--	The problem is that there is nothing special about the main-program procedure.	
--	Specifically, it could be withed and called from something else, or call itself
--	recursively. In either case, its declarative region, with its declaration of the
--	function, would be nested deeper than the declaration of the access type. Since
--	this is a compile-time check, it rejects anything that might be deeper, even
--	when it never is.
--
-- From Jeffrey Carter https://groups.google.com/g/comp.lang.ada/c/cxddLQGhsd0
--
-- ""
