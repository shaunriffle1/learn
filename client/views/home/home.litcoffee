    class @HomeController extends RouteController
      template: 'home'

      data: ->
        title: 'Example Ronny John'

      run: ->
        console.log "Home Controller rendered"
        super


