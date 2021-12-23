
const getValue = (obj, property, defaultValue) => (
  property.split('/').reduce((item, key) => {
    if (item && typeof item === 'object' && key in item) {
      return item[key];
    }
    return defaultValue;
  }, obj)
)
const object = {"a":{"b":{"c":"d"}}}


getValue(object, 'a/b/c');