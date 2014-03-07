class Blog.Views.PostsIndexView extends Backbone.View

  el: '#posts'

  template: JST["backbone/templates/posts/index"]

  initialize: ->
    @render()
    @addAll()

  addALL: ->
    @collection.forEach(@addOne, @)

  addOne: (model) ->
    @view = new BackboneTest.Views.PostView({model: model})
    @$el.find('tbody').append @view.render().el

  render: ->
    @$el.html @template()
    @
