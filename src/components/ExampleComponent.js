// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "bs-platform/lib/es6/curry.js";
import * as React from "react";

function ExampleComponent(Props) {
  var match = React.useState(function () {
        return 0;
      });
  var setCount = match[1];
  return React.createElement("div", undefined, React.createElement("button", {
                  onClick: (function (param) {
                      return Curry._1(setCount, (function (c) {
                                    return c + 1 | 0;
                                  }));
                    })
                }, "Click me"), "Count: " + match[0]);
}

var make = ExampleComponent;

export {
  make ,
  
}
/* react Not a pure module */
