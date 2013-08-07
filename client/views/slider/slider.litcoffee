Slider Template function
=====
jquery on template render
----

    Template.slider.rendered = ()->
      console.log "slider rendered"
      $("#slides").slidesjs
         width: 700
         height: 393
         pagination:
           active: false
         navigation:
           active: false 
           effect: "slide"
         play:
           active: false 
           effect: "slide"
           interval: 4000
           auto: true
           swap: false 
           pauseOnHover: false
           restartDelay: 2500

