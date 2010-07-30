compile: expand
	./rebar compile
	./priv/backends.escript clean
	
expand:
	./priv/backends.escript create
    
test: compile
	./test/jsx_test.escript test/cases
	
prove: compile
	prove ./test/jsx_test.escript

clean:
	./rebar clean
	./priv/backends.escript clean
	
package: compile
	./rebar install target=.
	
install: compile
	./rebar install