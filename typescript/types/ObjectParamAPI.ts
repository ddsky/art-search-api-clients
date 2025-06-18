import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'

import { RetrieveArtworkById200Response } from '../models/RetrieveArtworkById200Response';
import { SearchArtworks200Response } from '../models/SearchArtworks200Response';
import { SearchArtworks200ResponseArtworksInner } from '../models/SearchArtworks200ResponseArtworksInner';

import { ObservableArtApi } from "./ObservableAPI";
import { ArtApiRequestFactory, ArtApiResponseProcessor} from "../apis/ArtApi";

export interface ArtApiRandomArtworkRequest {
}

export interface ArtApiRetrieveArtworkByIdRequest {
    /**
     * The id of the artwork.
     * @type number
     * @memberof ArtApiretrieveArtworkById
     */
    id: number
}

export interface ArtApiSearchArtworksRequest {
    /**
     * The search query.
     * @type string
     * @memberof ArtApisearchArtworks
     */
    query?: string
    /**
     * The artwork must have been created after this date.
     * @type number
     * @memberof ArtApisearchArtworks
     */
    earliestStartDate?: number
    /**
     * The artwork must have been created before this date.
     * @type number
     * @memberof ArtApisearchArtworks
     */
    latestStartDate?: number
    /**
     * For artworks with a period of creation, the completion date must be after this date.
     * @type number
     * @memberof ArtApisearchArtworks
     */
    earliestEndDate?: number
    /**
     * For artworks with a period of creation, the completion date must be before this date.
     * @type number
     * @memberof ArtApisearchArtworks
     */
    latestEndDate?: number
    /**
     * The minimum aspect ratio (width/height) the artwork image must have.
     * @type number
     * @memberof ArtApisearchArtworks
     */
    minRatio?: number
    /**
     * The maximum aspect ratio (width/height) the artwork image must have.
     * @type number
     * @memberof ArtApisearchArtworks
     */
    maxRatio?: number
    /**
     * The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
     * @type string
     * @memberof ArtApisearchArtworks
     */
    type?: string
    /**
     * The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
     * @type string
     * @memberof ArtApisearchArtworks
     */
    material?: string
    /**
     * The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
     * @type string
     * @memberof ArtApisearchArtworks
     */
    technique?: string
    /**
     * The country or region of origin for the artwork
     * @type string
     * @memberof ArtApisearchArtworks
     */
    origin?: string
    /**
     * The number of artworks to skip in range [0,1000]
     * @type number
     * @memberof ArtApisearchArtworks
     */
    offset?: number
    /**
     * The number of artworks to return in range [1,10]
     * @type number
     * @memberof ArtApisearchArtworks
     */
    number?: number
}

export class ObjectArtApi {
    private api: ObservableArtApi

    public constructor(configuration: Configuration, requestFactory?: ArtApiRequestFactory, responseProcessor?: ArtApiResponseProcessor) {
        this.api = new ObservableArtApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context.
     * Random Artwork
     * @param param the request object
     */
    public randomArtworkWithHttpInfo(param: ArtApiRandomArtworkRequest = {}, options?: Configuration): Promise<HttpInfo<RetrieveArtworkById200Response>> {
        return this.api.randomArtworkWithHttpInfo( options).toPromise();
    }

    /**
     * Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context.
     * Random Artwork
     * @param param the request object
     */
    public randomArtwork(param: ArtApiRandomArtworkRequest = {}, options?: Configuration): Promise<RetrieveArtworkById200Response> {
        return this.api.randomArtwork( options).toPromise();
    }

    /**
     * Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.
     * Retrieve Artwork by Id
     * @param param the request object
     */
    public retrieveArtworkByIdWithHttpInfo(param: ArtApiRetrieveArtworkByIdRequest, options?: Configuration): Promise<HttpInfo<RetrieveArtworkById200Response>> {
        return this.api.retrieveArtworkByIdWithHttpInfo(param.id,  options).toPromise();
    }

    /**
     * Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.
     * Retrieve Artwork by Id
     * @param param the request object
     */
    public retrieveArtworkById(param: ArtApiRetrieveArtworkByIdRequest, options?: Configuration): Promise<RetrieveArtworkById200Response> {
        return this.api.retrieveArtworkById(param.id,  options).toPromise();
    }

    /**
     * Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.
     * Search Artworks
     * @param param the request object
     */
    public searchArtworksWithHttpInfo(param: ArtApiSearchArtworksRequest = {}, options?: Configuration): Promise<HttpInfo<SearchArtworks200Response>> {
        return this.api.searchArtworksWithHttpInfo(param.query, param.earliestStartDate, param.latestStartDate, param.earliestEndDate, param.latestEndDate, param.minRatio, param.maxRatio, param.type, param.material, param.technique, param.origin, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.
     * Search Artworks
     * @param param the request object
     */
    public searchArtworks(param: ArtApiSearchArtworksRequest = {}, options?: Configuration): Promise<SearchArtworks200Response> {
        return this.api.searchArtworks(param.query, param.earliestStartDate, param.latestStartDate, param.earliestEndDate, param.latestEndDate, param.minRatio, param.maxRatio, param.type, param.material, param.technique, param.origin, param.offset, param.number,  options).toPromise();
    }

}
