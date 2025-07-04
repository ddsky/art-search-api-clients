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


import ApiClient from './ApiClient';
import RetrieveArtworkById200Response from './model/RetrieveArtworkById200Response';
import SearchArtworks200Response from './model/SearchArtworks200Response';
import SearchArtworks200ResponseArtworksInner from './model/SearchArtworks200ResponseArtworksInner';
import ArtApi from './api/ArtApi';


/**
* Art Search let&#39;s you search and discover over one million pieces of historic art..<br>
* The <code>index</code> module provides access to constructors for all the classes which comprise the public API.
* <p>
* An AMD (recommended!) or CommonJS application will generally do something equivalent to the following:
* <pre>
* var ArtsearchJs = require('index'); // See note below*.
* var xxxSvc = new ArtsearchJs.XxxApi(); // Allocate the API class we're going to use.
* var yyyModel = new ArtsearchJs.Yyy(); // Construct a model instance.
* yyyModel.someProperty = 'someValue';
* ...
* var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
* ...
* </pre>
* <em>*NOTE: For a top-level AMD script, use require(['index'], function(){...})
* and put the application logic within the callback function.</em>
* </p>
* <p>
* A non-AMD browser application (discouraged) might do something like this:
* <pre>
* var xxxSvc = new ArtsearchJs.XxxApi(); // Allocate the API class we're going to use.
* var yyy = new ArtsearchJs.Yyy(); // Construct a model instance.
* yyyModel.someProperty = 'someValue';
* ...
* var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
* ...
* </pre>
* </p>
* @module index
* @version 1.0.0
*/
export {
    /**
     * The ApiClient constructor.
     * @property {module:ApiClient}
     */
    ApiClient,

    /**
     * The RetrieveArtworkById200Response model constructor.
     * @property {module:model/RetrieveArtworkById200Response}
     */
    RetrieveArtworkById200Response,

    /**
     * The SearchArtworks200Response model constructor.
     * @property {module:model/SearchArtworks200Response}
     */
    SearchArtworks200Response,

    /**
     * The SearchArtworks200ResponseArtworksInner model constructor.
     * @property {module:model/SearchArtworks200ResponseArtworksInner}
     */
    SearchArtworks200ResponseArtworksInner,

    /**
    * The ArtApi service constructor.
    * @property {module:api/ArtApi}
    */
    ArtApi
};
