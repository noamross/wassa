HTMLWidgets.widget({
  name: 'wassa',
  type: 'output',
  factory: function(el, width, height) {
    return {
      renderValue: function(x) {
      Module.addOnPostRun(() => {  // Run this stuff after the wasm module loads
          var start = window.performance.now();  //start timing
          var result = Module.ssa(x.rate, x.max_time, x.seed); //run our function
          var time = window.performance.now() - start;  //stop timing
          el.innerHTML = '<strong>Output: ' + result +  '<br />' + //print results
                         'Time Elapsed: ' + Math.round(time) + ' milliseconds</strong>';
          el.setAttribute("style", "margin:5px; padding:5px; border: thin solid #0000FF;");
        });
      },
      resize: function(width, height) {}
    };
  }
});
