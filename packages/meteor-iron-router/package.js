Package.describe({
  summary: 'Routing for Meteor'
});

Package.on_use(function (api) {

  Npm.depends({connect: "2.7.10"});

  api.use([
    'meteor',
    'deps',
    'underscore',
    'ejson'
  ], ['client', 'server']);

  api.use([
    'templating',
    'handlebars',
    'universal-events'
  ], 'client');

  api.add_files([
    'lib/router_utils.js',
    'lib/route_path.js',
    'lib/route_context.js',
    'lib/route.js',
    'lib/router.js'
  ], ['client', 'server']);

  api.add_files([
    'lib/client/location.js',
    'lib/client/yield_partials_dict.js',
    'lib/client/client_router.js',
    'lib/client/default_layout.html',
    'lib/client/route_controller.js',
    'lib/client/helpers.js'
  ], 'client');

  /*
   * All kinds of breaking changes due to linker branch merge
   * so commenting this out for now
  api.add_files([
    'lib/server/route_controller.js',
    'lib/server/server_router.js'
  ], 'server');
  */
});

Package.on_test(function (api) {
  api.use([
    'iron-router',
    'tinytest',
    'test-helpers',
    'templating',
    'reactive-dict'
  ], ['client']);

  //XXX change back to client and server
  api.add_files([
    'test/test_helpers.js',
    'test/router_utils_test.js',
    'test/route_path_test.js',
    'test/route_context_test.js',
    'test/route_test.js',
    'test/router_test.js',
  ], ['client']);

  api.add_files([
    'test/client/test_templates.html',
    'test/client/route_controller_test.js',
    'test/client/client_router_test.js'
  ], 'client');

  /*
   * XXX removing server tests for now
  api.add_files([
    'test/server/route_controller_test.js',
    'test/server/server_router_test.js',
  ], 'server');
  */
});
