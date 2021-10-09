//
//  SearchResponseJSON.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation

let SearchResponseJSON = """
{
    "site_id": "MCO",
    "country_default_time_zone": "GMT-05:00",
    "query": "airpods",
    "paging": {
        "total": 2604,
        "primary_results": 1000,
        "offset": 0,
        "limit": 1
    },
    "results": [
        {
            "id": "MCO635300067",
            "site_id": "MCO",
            "title": "Apple AirPods Pro - Blanco",
            "seller": {
                "id": 144197738,
                "permalink": null,
                "registration_date": null,
                "car_dealer": false,
                "real_estate_agency": false,
                "tags": null
            },
            "price": 893320,
            "prices": {
                "id": "MCO635300067",
                "prices": [
                    {
                        "id": "10",
                        "type": "standard",
                        "amount": 971000,
                        "regular_amount": null,
                        "currency_id": "COP",
                        "last_updated": "2021-09-15T21:14:17Z",
                        "conditions": {
                            "context_restrictions": [],
                            "start_time": null,
                            "end_time": null,
                            "eligible": true
                        },
                        "exchange_rate_context": "DEFAULT",
                        "metadata": {}
                    },
                    {
                        "id": "13",
                        "type": "promotion",
                        "amount": 893320,
                        "regular_amount": 971000,
                        "currency_id": "COP",
                        "last_updated": "2021-10-06T14:30:51Z",
                        "conditions": {
                            "context_restrictions": [
                                "channel_marketplace"
                            ],
                            "start_time": "2021-10-06T05:00:00Z",
                            "end_time": "2021-10-13T04:59:59Z",
                            "eligible": true
                        },
                        "exchange_rate_context": "DEFAULT",
                        "metadata": {
                            "promotion_id": "741143-MCO635300067",
                            "promotion_type": "custom"
                        }
                    }
                ],
                "presentation": {
                    "display_currency": "COP"
                },
                "payment_method_prices": [],
                "reference_prices": [],
                "purchase_discounts": []
            },
            "sale_price": null,
            "currency_id": "COP",
            "available_quantity": 4,
            "sold_quantity": 37,
            "buying_mode": "buy_it_now",
            "listing_type_id": "gold_special",
            "stop_time": "2041-06-06T04:00:00.000Z",
            "condition": "new",
            "permalink": "https://www.mercadolibre.com.co/apple-airpods-pro-blanco/p/MCO15306525",
            "thumbnail": "http://http2.mlstatic.com/D_884508-MLA46237784932_062021-I.jpg",
            "thumbnail_id": "884508-MLA46237784932_062021",
            "accepts_mercadopago": true,
            "installments": {
                "quantity": 36,
                "amount": 24814.44,
                "rate": 0,
                "currency_id": "COP"
            },
            "address": {
                "state_id": "CO-DC",
                "state_name": "Bogotá D.C.",
                "city_id": "TUNPQ1BVRTg0NTU0",
                "city_name": "Puente Aranda"
            },
            "shipping": {
                "free_shipping": true,
                "mode": "me2",
                "tags": [
                    "self_service_in",
                    "mandatory_free_shipping"
                ],
                "logistic_type": "cross_docking",
                "store_pick_up": false
            },
            "seller_address": {
                "id": "",
                "comment": "",
                "address_line": "",
                "zip_code": "",
                "country": {
                    "id": "CO",
                    "name": "Colombia"
                },
                "state": {
                    "id": "CO-DC",
                    "name": "Bogotá D.C."
                },
                "city": {
                    "id": "TUNPQ1BVRTg0NTU0",
                    "name": "Puente Aranda"
                },
                "latitude": "",
                "longitude": ""
            },
            "attributes": [
                {
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "id": "ALPHANUMERIC_MODEL",
                    "name": "Modelo alfanumérico",
                    "value_struct": null,
                    "values": [
                        {
                            "id": "9083040",
                            "name": "MWP22AM",
                            "struct": null,
                            "source": 1
                        }
                    ],
                    "source": 1,
                    "value_id": "9083040",
                    "value_name": "MWP22AM"
                },
                {
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "source": 1,
                    "id": "BRAND",
                    "name": "Marca",
                    "value_id": "9344",
                    "value_name": "Apple",
                    "value_struct": null,
                    "values": [
                        {
                            "name": "Apple",
                            "struct": null,
                            "source": 1,
                            "id": "9344"
                        }
                    ]
                },
                {
                    "attribute_group_name": "Otros",
                    "source": 3045741222775799,
                    "name": "Condición del ítem",
                    "value_name": "Nuevo",
                    "value_struct": null,
                    "values": [
                        {
                            "id": "2230284",
                            "name": "Nuevo",
                            "struct": null,
                            "source": 3045741222775799
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "id": "ITEM_CONDITION",
                    "value_id": "2230284"
                },
                {
                    "value_name": "Airpods",
                    "value_struct": null,
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "id": "LINE",
                    "name": "Línea",
                    "value_id": null,
                    "values": [
                        {
                            "struct": null,
                            "source": 3045741222775799,
                            "id": null,
                            "name": "Airpods"
                        }
                    ],
                    "source": 3045741222775799
                },
                {
                    "source": 1,
                    "name": "Modelo",
                    "value_name": "AirPods Pro",
                    "value_struct": null,
                    "values": [
                        {
                            "id": "7955213",
                            "name": "AirPods Pro",
                            "struct": null,
                            "source": 1
                        }
                    ],
                    "attribute_group_name": "Otros",
                    "id": "MODEL",
                    "value_id": "7955213",
                    "attribute_group_id": "OTHERS"
                }
            ],
            "original_price": 971000,
            "category_id": "MCO5072",
            "official_store_id": null,
            "domain_id": "MCO-HEADPHONES",
            "catalog_product_id": "MCO15306525",
            "tags": [
                "good_quality_picture",
                "loyalty_discount_eligible",
                "immediate_payment",
                "cart_eligible",
                "best_seller_candidate"
            ],
            "catalog_listing": true,
            "use_thumbnail_id": true,
            "offer_score": null,
            "offer_share": null,
            "match_score": null,
            "winner_item_id": null,
            "order_backend": 1
        }
    ],
    "sort": {
        "id": "relevance",
        "name": "Más relevantes"
    },
    "available_sorts": [
        {
            "id": "price_asc",
            "name": "Menor precio"
        },
        {
            "id": "price_desc",
            "name": "Mayor precio"
        }
    ],
    "filters": [],
    "available_filters": [
        {
            "id": "category",
            "name": "Categorías",
            "type": "text",
            "values": [
                {
                    "id": "MCO3813",
                    "name": "Accesorios para Celulares",
                    "results": 2009
                },
                {
                    "id": "MCO1000",
                    "name": "Electrónica, Audio y Video",
                    "results": 306
                },
                {
                    "id": "MCO1648",
                    "name": "Computación",
                    "results": 181
                },
                {
                    "id": "MCO442202",
                    "name": "Repuestos de Celulares",
                    "results": 159
                },
                {
                    "id": "MCO417704",
                    "name": "Smartwatches y Accesorios",
                    "results": 21
                },
                {
                    "id": "MCO1055",
                    "name": "Celulares y Smartphones",
                    "results": 19
                },
                {
                    "id": "MCO1144",
                    "name": "Consolas y Videojuegos",
                    "results": 15
                },
                {
                    "id": "MCO3937",
                    "name": "Relojes y Joyas",
                    "results": 15
                },
                {
                    "id": "MCO1430",
                    "name": "Ropa y Accesorios",
                    "results": 9
                },
                {
                    "id": "MCO1574",
                    "name": "Hogar y Muebles",
                    "results": 8
                },
                {
                    "id": "MCO1132",
                    "name": "Juegos y Juguetes",
                    "results": 8
                },
                {
                    "id": "MCO1058",
                    "name": "Radios y Handies",
                    "results": 6
                },
                {
                    "id": "MCO1039",
                    "name": "Cámaras y Accesorios",
                    "results": 5
                },
                {
                    "id": "MCO1053",
                    "name": "Telefonía Fija e Inalámbrica",
                    "results": 3
                },
                {
                    "id": "MCO175794",
                    "name": "Herramientas",
                    "results": 1
                },
                {
                    "id": "MCO118204",
                    "name": "Recuerdos, Piñatería y Fiestas",
                    "results": 1
                },
                {
                    "id": "MCO1915",
                    "name": "Otros",
                    "results": 9
                },
                {
                    "id": "MCO1953",
                    "name": "Otras categorías",
                    "results": 2
                }
            ]
        },
        {
            "id": "official_store",
            "name": "Tiendas oficiales",
            "type": "text",
            "values": [
                {
                    "id": "all",
                    "name": "Todas las tiendas oficiales",
                    "results": 18
                },
                {
                    "id": "1281",
                    "name": "Spigen",
                    "results": 10
                },
                {
                    "id": "1440",
                    "name": "Apple",
                    "results": 2
                },
                {
                    "id": "564",
                    "name": "Catalyst",
                    "results": 2
                },
                {
                    "id": "957",
                    "name": "Smart Buy",
                    "results": 1
                }
            ]
        },
        {
            "id": "discount",
            "name": "Descuentos",
            "type": "number",
            "values": [
                {
                    "id": "5-100",
                    "name": "Desde 5% OFF",
                    "results": 23
                },
                {
                    "id": "10-100",
                    "name": "Desde 10% OFF",
                    "results": 14
                },
                {
                    "id": "15-100",
                    "name": "Desde 15% OFF",
                    "results": 7
                },
                {
                    "id": "20-100",
                    "name": "Desde 20% OFF",
                    "results": 4
                },
                {
                    "id": "25-100",
                    "name": "Desde 25% OFF",
                    "results": 2
                },
                {
                    "id": "30-100",
                    "name": "Desde 30% OFF",
                    "results": 1
                }
            ]
        },
        {
            "id": "state",
            "name": "Ubicación",
            "type": "text",
            "values": [
                {
                    "id": "CO-DC",
                    "name": "Bogotá D.C.",
                    "results": 927
                },
                {
                    "id": "CO-ANT",
                    "name": "Antioquia",
                    "results": 266
                },
                {
                    "id": "CO-CUN",
                    "name": "Cundinamarca",
                    "results": 101
                },
                {
                    "id": "CO-SAN",
                    "name": "Santander",
                    "results": 70
                },
                {
                    "id": "CO-CES",
                    "name": "Cesar",
                    "results": 62
                },
                {
                    "id": "CO-VAC",
                    "name": "Valle Del Cauca",
                    "results": 52
                },
                {
                    "id": "CO-BOL",
                    "name": "Bolivar",
                    "results": 46
                },
                {
                    "id": "CO-MET",
                    "name": "Meta",
                    "results": 29
                },
                {
                    "id": "CO-ATL",
                    "name": "Atlantico",
                    "results": 22
                },
                {
                    "id": "CO-RIS",
                    "name": "Risaralda",
                    "results": 21
                },
                {
                    "id": "CO-CAL",
                    "name": "Caldas",
                    "results": 17
                },
                {
                    "id": "CO-NSA",
                    "name": "Norte De Santander",
                    "results": 11
                },
                {
                    "id": "CO-BOY",
                    "name": "Boyaca",
                    "results": 8
                },
                {
                    "id": "CO-CAS",
                    "name": "Casanare",
                    "results": 7
                },
                {
                    "id": "CO-TOL",
                    "name": "Tolima",
                    "results": 7
                },
                {
                    "id": "CO-HUI",
                    "name": "Huila",
                    "results": 6
                },
                {
                    "id": "CO-LAG",
                    "name": "Guajira",
                    "results": 6
                },
                {
                    "id": "CO-COR",
                    "name": "Córdoba",
                    "results": 5
                },
                {
                    "id": "CO-MAG",
                    "name": "Magdalena",
                    "results": 5
                },
                {
                    "id": "CO-CAU",
                    "name": "Cauca",
                    "results": 3
                },
                {
                    "id": "CO-NAR",
                    "name": "Nariño",
                    "results": 3
                },
                {
                    "id": "CO-QUI",
                    "name": "Quindio",
                    "results": 2
                },
                {
                    "id": "CO-SAP",
                    "name": "San Andres y Providencia",
                    "results": 2
                },
                {
                    "id": "CO-CAQ",
                    "name": "Caqueta",
                    "results": 1
                }
            ]
        },
        {
            "id": "price",
            "name": "Precio",
            "type": "range",
            "values": [
                {
                    "id": "*-80000.0",
                    "name": "Hasta $80.000",
                    "results": 785
                },
                {
                    "id": "80000.0-100000.0",
                    "name": "$80.000 a $100.000",
                    "results": 423
                },
                {
                    "id": "100000.0-*",
                    "name": "Más de $100.000",
                    "results": 1396
                }
            ]
        },
        {
            "id": "accepts_mercadopago",
            "name": "Filtro por MercadoPago",
            "type": "boolean",
            "values": [
                {
                    "id": "yes",
                    "name": "Con MercadoPago",
                    "results": 2604
                }
            ]
        },
        {
            "id": "installments",
            "name": "Pago",
            "type": "text",
            "values": [
                {
                    "id": "yes",
                    "name": "En cuotas",
                    "results": 2603
                },
                {
                    "id": "no_interest",
                    "name": "Cuotas sin interés",
                    "results": 1535
                }
            ]
        },
        {
            "id": "shipping",
            "name": "Envío",
            "type": "text",
            "values": [
                {
                    "id": "mercadoenvios",
                    "name": "Mercado Envíos",
                    "results": 2587
                },
                {
                    "id": "fulfillment",
                    "name": "Full",
                    "results": 38
                }
            ]
        },
        {
            "id": "power_seller",
            "name": "Filtro por calidad de vendedores",
            "type": "boolean",
            "values": [
                {
                    "id": "yes",
                    "name": "Mejores vendedores",
                    "results": 515
                }
            ]
        },
        {
            "id": "since",
            "name": "Filtro por fecha de comienzo",
            "type": "text",
            "values": [
                {
                    "id": "today",
                    "name": "Publicados hoy",
                    "results": 2
                }
            ]
        },
        {
            "id": "until",
            "name": "Filtro por fecha de finalización",
            "type": "text",
            "values": [
                {
                    "id": "today",
                    "name": "Finalizan hoy",
                    "results": 2
                }
            ]
        },
        {
            "id": "has_video",
            "name": "Filtro por publicaciones con video",
            "type": "boolean",
            "values": [
                {
                    "id": "yes",
                    "name": "Publicaciones con video",
                    "results": 159
                }
            ]
        },
        {
            "id": "has_pictures",
            "name": "Filtro por publicaciones con imágenes",
            "type": "boolean",
            "values": [
                {
                    "id": "yes",
                    "name": "Con fotos",
                    "results": 2604
                }
            ]
        },
        {
            "id": "all_payment_methods_discount",
            "name": "Descuentos para todos los medios de pago",
            "type": "number",
            "values": [
                {
                    "id": "5-100",
                    "name": "Desde 5% OFF",
                    "results": 5
                },
                {
                    "id": "10-100",
                    "name": "Desde 10% OFF",
                    "results": 4
                }
            ]
        },
        {
            "id": "price_campaign_id",
            "name": "Campaña",
            "type": "number",
            "values": [
                {
                    "id": "MCO3315",
                    "name": "MCO3315",
                    "results": 3
                },
                {
                    "id": "MCO2001",
                    "name": "MCO2001",
                    "results": 3
                },
                {
                    "id": "P-MCO2103001",
                    "name": "P-MCO2103001",
                    "results": 1
                },
                {
                    "id": "P-MCO2064005",
                    "name": "P-MCO2064005",
                    "results": 1
                },
                {
                    "id": "MCO2298",
                    "name": "MCO2298",
                    "results": 1
                }
            ]
        },
        {
            "id": "shipping_cost",
            "name": "Costo de envío",
            "type": "text",
            "values": [
                {
                    "id": "free",
                    "name": "Gratis",
                    "results": 2020
                }
            ]
        },
        {
            "id": "ITEM_CONDITION",
            "name": "Condición",
            "type": "STRING",
            "values": [
                {
                    "id": "2230284",
                    "name": "Nuevo",
                    "results": 2429
                },
                {
                    "id": "2230581",
                    "name": "Usado",
                    "results": 170
                },
                {
                    "id": "2230582",
                    "name": "Reacondicionado",
                    "results": 5
                }
            ]
        },
        {
            "id": "SHIPPING_ORIGIN",
            "name": "Tipo de compra",
            "type": "STRING",
            "values": [
                {
                    "id": "10215068",
                    "name": "Local",
                    "results": 1683
                },
                {
                    "id": "10215069",
                    "name": "Internacional",
                    "results": 921
                }
            ]
        }
    ]
}
"""
