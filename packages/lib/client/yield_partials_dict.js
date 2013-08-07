//@export YieldPartial
YieldPartial = function (template, data) {
  this.template = template || function () { return ''; };
  this.data = data || {};
};

YieldPartial._DEFAULT_KEY = '__main__';

_.extend(YieldPartial.prototype, {
  render: function () {
    return this.template(this.data);
  },

  equals: function (other) {
    if (!other)
      return false;
    return this.template == other.template && this.data == other.data;
  }
});

//@export YieldPartialDict
YieldPartialDict = function () {
  this.keys = {};
  this.keyDeps = {};
};

_.extend(YieldPartialDict.prototype, {
  set: function (key, options) {
    var self = this
      , oldValue
      , value

    options = options || {};

    key = key || YieldPartial._DEFAULT_KEY;
    value = new YieldPartial(options.template, options.data);

    if (_.has(self.keys, key))
      oldValue = self.keys[key];

    if (value.equals(oldValue))
      return;

    self.keys[key] = value;

    var changed = function (v) {
      v && v.changed();
    };

    changed(self.keyDeps[key]);
  },

  get: function (key) {
    var self = this;
    key = key || YieldPartial._DEFAULT_KEY;
    self._ensureKey(key);
    self._setDefault(key);
    self.keyDeps[key].depend();
    return self.keys[key];
  },

  clear: function (key) {
    var self = this;
    if (key)
      self.set(key, new YieldPartial);
    else {
      _.each(_.keys(self.keys), function (key) {
        self.set(key, new YieldPartial);
      });
    }
  },

  _setDefault: function (key) {
    var self = this;

    if (typeof self.keys[key] === 'undefined')
      self.set(key);
  },

  _ensureKey: function (key) {
    var self = this;
    if (!(key in self.keyDeps)) {
      self.keyDeps[key] = new Deps.Dependency;
    }
  }
});
