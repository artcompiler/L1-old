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
);
