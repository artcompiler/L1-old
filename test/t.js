/*
(function ($, _) {
    $.x();
    $.y();
    $.z();
    var v = Backbone.View.extend({ $: $,
				   _: _
				 })
})({ x: function () { print('x') },
     y: function () { print('y') },
     z: function () { print('z') }
   },
   { a: { foo: "foo",
	  bar: "bar",
	  baz: "baz"
	}
   }
)
*/
/*
  // Returns a function that will be executed at most one time, no matter how
  // often you call it. Useful for lazy initialization.
  _.once = function(func) {
    var ran = false, memo;
    return function() {
      if (ran) return memo;
      ran = true;
      return memo = func.apply(this, arguments);
    };
  };

*/

function f() {
    return x + y
}

function g() {
    return x + y + z
}