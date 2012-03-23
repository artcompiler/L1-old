(function ($) {
    $.x();
    $.y();
    $.z();
})({ x: function () { print('x') },
     y: function () { print('y') },
     z: function () { print('z') }
   }
);
