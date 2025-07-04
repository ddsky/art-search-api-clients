/**
 * Art Search API
 * Art Search let's you search and discover over one million pieces of historic art.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@artsearch.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.ArtsearchJs);
  }
}(this, function(expect, ArtsearchJs) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new ArtsearchJs.RetrieveArtworkById200Response();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('RetrieveArtworkById200Response', function() {
    it('should create an instance of RetrieveArtworkById200Response', function() {
      // uncomment below and update the code to test RetrieveArtworkById200Response
      //var instance = new ArtsearchJs.RetrieveArtworkById200Response();
      //expect(instance).to.be.a(ArtsearchJs.RetrieveArtworkById200Response);
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new ArtsearchJs.RetrieveArtworkById200Response();
      //expect(instance).to.be();
    });

    it('should have the property title (base name: "title")', function() {
      // uncomment below and update the code to test the property title
      //var instance = new ArtsearchJs.RetrieveArtworkById200Response();
      //expect(instance).to.be();
    });

    it('should have the property image (base name: "image")', function() {
      // uncomment below and update the code to test the property image
      //var instance = new ArtsearchJs.RetrieveArtworkById200Response();
      //expect(instance).to.be();
    });

    it('should have the property startDate (base name: "start_date")', function() {
      // uncomment below and update the code to test the property startDate
      //var instance = new ArtsearchJs.RetrieveArtworkById200Response();
      //expect(instance).to.be();
    });

    it('should have the property endDate (base name: "end_date")', function() {
      // uncomment below and update the code to test the property endDate
      //var instance = new ArtsearchJs.RetrieveArtworkById200Response();
      //expect(instance).to.be();
    });

    it('should have the property description (base name: "description")', function() {
      // uncomment below and update the code to test the property description
      //var instance = new ArtsearchJs.RetrieveArtworkById200Response();
      //expect(instance).to.be();
    });

  });

}));
