import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'

import { RetrieveArtworkById200Response } from '../models/RetrieveArtworkById200Response';
import { SearchArtworks200Response } from '../models/SearchArtworks200Response';
import { SearchArtworks200ResponseArtworksInner } from '../models/SearchArtworks200ResponseArtworksInner';
import { ObservableArtApi } from './ObservableAPI';

import { ArtApiRequestFactory, ArtApiResponseProcessor} from "../apis/ArtApi";
export class PromiseArtApi {
    private api: ObservableArtApi

    public constructor(
        configuration: Configuration,
        requestFactory?: ArtApiRequestFactory,
        responseProcessor?: ArtApiResponseProcessor
    ) {
        this.api = new ObservableArtApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context.
     * Random Artwork
     */
    public randomArtworkWithHttpInfo(_options?: Configuration): Promise<HttpInfo<RetrieveArtworkById200Response>> {
        const result = this.api.randomArtworkWithHttpInfo(_options);
        return result.toPromise();
    }

    /**
     * Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context.
     * Random Artwork
     */
    public randomArtwork(_options?: Configuration): Promise<RetrieveArtworkById200Response> {
        const result = this.api.randomArtwork(_options);
        return result.toPromise();
    }

    /**
     * Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.
     * Retrieve Artwork by Id
     * @param id The id of the artwork.
     */
    public retrieveArtworkByIdWithHttpInfo(id: number, _options?: Configuration): Promise<HttpInfo<RetrieveArtworkById200Response>> {
        const result = this.api.retrieveArtworkByIdWithHttpInfo(id, _options);
        return result.toPromise();
    }

    /**
     * Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.
     * Retrieve Artwork by Id
     * @param id The id of the artwork.
     */
    public retrieveArtworkById(id: number, _options?: Configuration): Promise<RetrieveArtworkById200Response> {
        const result = this.api.retrieveArtworkById(id, _options);
        return result.toPromise();
    }

    /**
     * Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.
     * Search Artworks
     * @param query The search query.
     * @param earliestStartDate The artwork must have been created after this date.
     * @param latestStartDate The artwork must have been created before this date.
     * @param earliestEndDate For artworks with a period of creation, the completion date must be after this date.
     * @param latestEndDate For artworks with a period of creation, the completion date must be before this date.
     * @param minRatio The minimum aspect ratio (width/height) the artwork image must have.
     * @param maxRatio The maximum aspect ratio (width/height) the artwork image must have.
     * @param type The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
     * @param material The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
     * @param technique The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
     * @param origin The country or region of origin for the artwork
     * @param offset The number of artworks to skip in range [0,1000]
     * @param number The number of artworks to return in range [1,10]
     */
    public searchArtworksWithHttpInfo(query?: string, earliestStartDate?: number, latestStartDate?: number, earliestEndDate?: number, latestEndDate?: number, minRatio?: number, maxRatio?: number, type?: string, material?: string, technique?: string, origin?: string, offset?: number, number?: number, _options?: Configuration): Promise<HttpInfo<SearchArtworks200Response>> {
        const result = this.api.searchArtworksWithHttpInfo(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number, _options);
        return result.toPromise();
    }

    /**
     * Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.
     * Search Artworks
     * @param query The search query.
     * @param earliestStartDate The artwork must have been created after this date.
     * @param latestStartDate The artwork must have been created before this date.
     * @param earliestEndDate For artworks with a period of creation, the completion date must be after this date.
     * @param latestEndDate For artworks with a period of creation, the completion date must be before this date.
     * @param minRatio The minimum aspect ratio (width/height) the artwork image must have.
     * @param maxRatio The maximum aspect ratio (width/height) the artwork image must have.
     * @param type The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
     * @param material The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
     * @param technique The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
     * @param origin The country or region of origin for the artwork
     * @param offset The number of artworks to skip in range [0,1000]
     * @param number The number of artworks to return in range [1,10]
     */
    public searchArtworks(query?: string, earliestStartDate?: number, latestStartDate?: number, earliestEndDate?: number, latestEndDate?: number, minRatio?: number, maxRatio?: number, type?: string, material?: string, technique?: string, origin?: string, offset?: number, number?: number, _options?: Configuration): Promise<SearchArtworks200Response> {
        const result = this.api.searchArtworks(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number, _options);
        return result.toPromise();
    }


}



