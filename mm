function addJQuery(callback) {
    var script = document.createElement("script");
    script.setAttribute("src", "//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js");
    script.addEventListener('load', function() {
        var script = document.createElement("script");
        script.textContent = "window.jQ=jQuery.noConflict(true);(" + callback.toString() + ")();";
        document.body.appendChild(script);
    }, false);
    document.body.appendChild(script);
}
function slide() {

    var myInterval = setInterval(function() {
        for (var a = document.getElementsByClassName("menuVirescentOverlord1"), b = 0; b < a.length; b++) a[b].hidden = !0;
        ans = CurrentProblem.CorrectAnswer;
        try {
            var array = ans.split('|'),
                a = array[0], b = array[1], c = array[2];
        }
        catch {
            var fdssdfs = 1
        }
        $('[class="medium_field"]').val(a);
        $('[class="small_field"]').val(a);
        $('[class="large_field"]').val(a);
        $('[class="medium_field"]').val(b);
        $('[class="small_field"]').val(b);
        $('[class="large_field"]').val(b);
        $('[class="medium_field"]').val(c);
        $('[class="small_field"]').val(c);
        $('[class="large_field"]').val(c);
        $('[class="medium_field"]').val(ans);
        $('[class="small_field"]').val(ans);
        $('[class="large_field"]').val(ans);
        try {
             for (var a = document.getElementsByClassName("menuVirescentOverlord1"), b = 0; b < a.length; b++) a[b].hidden = !0;
            javascript: ans = CurrentProblem.CorrectAnswer;
            try {
                let b = document.getElementsByClassName("ms-pbl-manchoice ms-pbl-manchoice-checkbox ms-pbl-manchoice-radio-multistate")[0];
                b.setAttribute("data-name", ans), b.click()
            } catch (a) {}
            for (var a = document.getElementsByClassName("menuVirescentOverlord1"), b = 0; b < a.length; b++) a[b].hidden = !0;
            for (var a = document.getElementsByTagName("input"), c = 0; c < a.length; c++) a[c].setAttribute("data-name", ans);
            document.getElementsByTagName("input")[0].click(), doNext(event)
        }
        catch {
            var xsdfsdfds = 1
        }
        console.log(doNext());
        addJQuery(slide);
    }, 2);
}
addJQuery(slide);
