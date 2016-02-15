module.exports = function() {
    this.host = this.host || "wufoo.com", this.userName = "", this.formHash = "", this.ssl = "unset", this.autoResize = !0, this.height = "", this.width = "100%", this.disabled = !1, this.frameUrl = "", this.defaultValues = "", this.header = "show", this.key = "", this.polling = !1, this.resizeDone = "", this.initializeComplete = !1, this.entSource = "", this.initialize = function(params) {
        for (var key in params) this[key] = params[key];
        this.key = this.formHash + "" + Math.floor(Math.random() * 1e6);
        this.generateFrameUrl();
        if (this.initializeComplete === !1) {
            this.addEvent(window, "message", this.bindMethod(this.addSubmitListener, this));
            this.addEvent(window, "message", this.bindMethod(this.resizeWufooForm, this));
            this.initializeDone = !0
        }
    }, this.generateFrameUrl = function() {
        var url = "",
            refer = document.referrer;
        refer = refer.replace(/\//g, "wuslash");
        refer = refer.replace(/\+/g, "wube");
        url += this.determineSecurity();
        url += this.userName + "." + this.host + "/embed/" + this.formHash + "/";
        url += "def/embedKey=" + this.key;
        this.entSrouce !== "" && (url = url + "&entsource=" + this.entSource);
        url += "&referrer=" + encodeURIComponent(refer);
        this.defaultValues != "" && (url += "&" + this.defaultValues);
        this.ssl == 0 && (url += "&secure=false");
        this.disabled && (url += "&disable=true");
        this.autoResize == 0 && (url += "&scrolling=true");
        this.header == "hide" && (url += "&header=hide");
        this.frameUrl = url
    }, this.generateFullPageUrl = function() {
        var url = "";
        url += this.determineSecurity();
        url += this.userName + "." + this.host + "/forms/" + this.formHash + "/";
        this.ssl == 0 && (url += "http/true/");
        return url
    }, this.addResizeScript = function() {
        if (!this.polling) {
            var self = this;
            setTimeout(function() {
                var script = document.createElement("script");
                script.setAttribute("src", document.location.protocol + "//" + self.host + "/forms/height.js?embedKey=" + self.key + "&variable=" + self.formHash + "&timestamp=" + (new Date).getTime().toString());
                script.setAttribute("type", "text/javascript");
                document.body.appendChild(script)
            }, 50)
        }
    }, this.resizeForm = function(ret) {
        if (this.autoResize == 1 && ret.height) {
            document.getElementById("wufooForm" + this.formHash).height = ret.height;
            if (ret.rules == "1" || this.isFunction(this.resizeDone)) {
                this.isFunction(this.resizeDone) && this.resizeDone(ret.height);
                __wufooCallBackFn = this.resizeDone;
                this.appendChildProxyFrame(ret.protocol);
                __poll(this.formHash);
                this.polling = !0
            }
        }
    }, this.addSubmitListener = function(e) {
        if (e.origin != "http://" + this.userName + "." + this.host && e.origin != "https://" + this.userName + "." + this.host) return;
        e.data == "formSubmitted" && (document.querySelectorAll(".wufoo-form-container").length == 1 || document.getElementsByTagName("iframe").length == 1) && this.scrollToTop()
    }, this.scrollToTop = function() {
        var activeForm = document.getElementById("wufooForm" + this.formHash);
        activeForm && activeForm.scrollIntoView()
    }, this.isFunction = function(object) {
        return typeof object == "function"
    }, this.determineSecurity = function() {
        return this.ssl == 1 ? "https://" : "http://"
    }, this.generateFrameMarkup = function() {
        var scroll = "no";
        this.autoResize == 0 && (scroll = "auto");
        var src = '<iframe id="wufooForm' + this.formHash + '" class="wufoo-form-container" height="' + this.height + '" allowTransparency="true" frameborder="0" scrolling="' + scroll + '" style="width:' + this.width + ';border:none"' + 'src="' + this.frameUrl + '"><a href="' + this.generateFullPageUrl() + '" title="html form">Fill out my Wufoo form!</a></iframe>';
        return src
    }, this.display = function() {
        this.async == 1 ? document.getElementById("wufoo-" + this.formHash).innerHTML = this.generateFrameMarkup() : document.write(this.generateFrameMarkup());
        window.postMessage || this.addEvent(document.getElementById("wufooForm" + this.formHash), "load", this.bindMethod(this.addResizeScript, this))
    }, this.resizeWufooForm = function(event) {
        if (event.origin != "http://" + this.userName + "." + this.host && event.origin != "https://" + this.userName + "." + this.host) return;
        if (this.autoResize === !0) {
            var data = event.data.split("|"),
                newFormHeight = parseInt(data[0], 10),
                formEl = document.getElementById("wufooForm" + this.formHash);
            formEl && this.isMessageFromCorrectForm(data[1]) && (formEl.height = newFormHeight);
            this.isFunction(this.resizeDone) && this.resizeDone(newFormHeight)
        }
    }, this.isMessageFromCorrectForm = function(dataHash) {
        dataHash = dataHash || "";
        var hash = dataHash.substring(0, this.formHash.length);
        return hash == this.formHash ? !0 : !1
    }, this.addEvent = function(obj, type, fn) {
        if (obj.attachEvent) {
            obj["e" + type + fn] = fn;
            obj[type + fn] = function() {
                obj["e" + type + fn](window.event)
            };
            obj.attachEvent("on" + type, obj[type + fn])
        } else obj.addEventListener(type, fn, !1)
    }, this.bindMethod = function(method, scope) {
        return function() {
            method.methodReadyToRun && method.apply(scope, arguments);
            typeof method.methodReadyToRun == "undefined" && (method.methodReadyToRun = !0)
        }
    }, this.appendChildProxyFrame = function(protocol) {
        var proxyName = "wufooProxyFrame" + this.formHash;
        __proxyFrameUrl = this.getChildProxyUrl(protocol);
        this.appendIFrame(proxyName, __proxyFrameUrl)
    }, this.getChildProxyUrl = function(protocol) {
        var url = "";
        url += protocol + "//";
        url += this.userName + "." + this.host + "/forms/blank.htm";
        url += "#" + window.location.href;
        return url
    }, this.appendIFrame = function(name, src) {
        var proxyFrame = document.getElementById(name);
        if (!proxyFrame) {
            var newiframe = document.createElement("iframe");
            newiframe.setAttribute("id", name);
            newiframe.setAttribute("name", name);
            newiframe.setAttribute("height", "0px;");
            newiframe.setAttribute("style", "position: absolute; left: -500px; top: 500px; width: 0px;");
            newiframe.setAttribute("src", src);
            document.body.appendChild(newiframe)
        }
    }, this.resizeIFrame = function(formHash) {
        if (window.postMessage) {
            iframe = document.getElementById("wufooForm" + formHash);
            var origin = this.determineSecurity() + this.userName + "." + this.host;
            iframe.contentWindow.postMessage("resize", origin)
        }
    }, this.attachOnResizeEvent = function() {
        if (typeof window.__wufooForms != "undefined") window.__wufooForms.push(this);
        else {
            window.__wufooForms = [];
            window.__wufooForms.push(this);
            window.oldHandler = window.onresize
        }
        window.onresize = function() {
            for (i = 0; i < window.__wufooForms.length; i++) window.__wufooForms[i].resizeIFrame(window.__wufooForms[i].formHash);
            window.oldHandler && window.oldHandler()
        }
    }
}

function __poll(formHash) {
    var childFrameHeight = __getChildFrameHeight();
    if (childFrameHeight > 0 && __currentHeight != childFrameHeight) {
        __currentHeight = childFrameHeight;
        document.getElementById("wufooForm" + formHash).height = childFrameHeight;
        typeof __wufooCallBackFn == "function" && __wufooCallBackFn(childFrameHeight)
    }
    setTimeout("__poll('" + formHash + "')", 500)
}

function __getChildFrameHeight() {
    var hArray = window.location.hash.split("=");
    return hArray[1]
}
var __currentHeight = 0,
    __wufooCallBackFn = "";