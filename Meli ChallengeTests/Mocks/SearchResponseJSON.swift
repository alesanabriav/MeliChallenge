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
        "limit": 10
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
        },
        {
            "id": "MCO814789830",
            "site_id": "MCO",
            "title": "Apple AirPods Con Estuche De Carga - Blanco",
            "seller": {
                "id": 123330797,
                "permalink": null,
                "registration_date": null,
                "car_dealer": false,
                "real_estate_agency": false,
                "tags": null
            },
            "price": 584900,
            "prices": {
                "id": "MCO814789830",
                "prices": [
                    {
                        "id": "3",
                        "type": "standard",
                        "amount": 584900,
                        "regular_amount": null,
                        "currency_id": "COP",
                        "last_updated": "2021-10-07T14:51:09Z",
                        "conditions": {
                            "context_restrictions": [],
                            "start_time": null,
                            "end_time": null,
                            "eligible": true
                        },
                        "exchange_rate_context": "DEFAULT",
                        "metadata": {}
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
            "available_quantity": 3,
            "sold_quantity": 6,
            "buying_mode": "buy_it_now",
            "listing_type_id": "gold_special",
            "stop_time": "2041-09-23T04:00:00.000Z",
            "condition": "new",
            "permalink": "https://www.mercadolibre.com.co/apple-airpods-con-estuche-de-carga-blanco/p/MCO15914456",
            "thumbnail": "http://http2.mlstatic.com/D_968214-MLA46317822784_062021-I.jpg",
            "thumbnail_id": "968214-MLA46317822784_062021",
            "accepts_mercadopago": true,
            "installments": {
                "quantity": 36,
                "amount": 16247.22,
                "rate": 0,
                "currency_id": "COP"
            },
            "address": {
                "state_id": "CO-DC",
                "state_name": "Bogotá D.C.",
                "city_id": "TUNPQ0tFTjQyODYy",
                "city_name": "Kennedy"
            },
            "shipping": {
                "free_shipping": true,
                "mode": "me2",
                "tags": [
                    "self_service_in",
                    "mandatory_free_shipping"
                ],
                "logistic_type": "xd_drop_off",
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
                    "id": "TUNPQ0tFTjQyODYy",
                    "name": "Kennedy"
                },
                "latitude": "",
                "longitude": ""
            },
            "attributes": [
                {
                    "value_name": "MV7N2",
                    "values": [
                        {
                            "name": "MV7N2",
                            "struct": null,
                            "source": 1,
                            "id": "8775407"
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "id": "ALPHANUMERIC_MODEL",
                    "name": "Modelo alfanumérico",
                    "value_id": "8775407",
                    "value_struct": null,
                    "source": 1
                },
                {
                    "values": [
                        {
                            "struct": null,
                            "source": 1,
                            "id": "9344",
                            "name": "Apple"
                        }
                    ],
                    "value_id": "9344",
                    "value_name": "Apple",
                    "value_struct": null,
                    "attribute_group_name": "Otros",
                    "source": 1,
                    "id": "BRAND",
                    "name": "Marca",
                    "attribute_group_id": "OTHERS"
                },
                {
                    "name": "Condición del ítem",
                    "attribute_group_name": "Otros",
                    "value_name": "Nuevo",
                    "value_struct": null,
                    "values": [
                        {
                            "source": 3045741222775799,
                            "id": "2230284",
                            "name": "Nuevo",
                            "struct": null
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "source": 3045741222775799,
                    "id": "ITEM_CONDITION",
                    "value_id": "2230284"
                },
                {
                    "source": 1,
                    "id": "MODEL",
                    "value_name": "AirPods with charging case (2nd generation)",
                    "value_struct": null,
                    "values": [
                        {
                            "id": "9139230",
                            "name": "AirPods with charging case (2nd generation)",
                            "struct": null,
                            "source": 1
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "name": "Modelo",
                    "value_id": "9139230"
                }
            ],
            "original_price": null,
            "category_id": "MCO5072",
            "official_store_id": null,
            "domain_id": "MCO-HEADPHONES",
            "catalog_product_id": "MCO15914456",
            "tags": [
                "good_quality_picture",
                "immediate_payment",
                "cart_eligible",
                "best_seller_candidate",
                "meli_choice_candidate"
            ],
            "catalog_listing": true,
            "use_thumbnail_id": true,
            "offer_score": null,
            "offer_share": null,
            "match_score": null,
            "winner_item_id": null,
            "order_backend": 2
        },
        {
            "id": "MCO652334513",
            "site_id": "MCO",
            "title": "Apple AirPods Max - Gris Espacial",
            "seller": {
                "id": 44664184,
                "permalink": null,
                "registration_date": null,
                "car_dealer": false,
                "real_estate_agency": false,
                "tags": null
            },
            "price": 2620000,
            "prices": {
                "id": "MCO652334513",
                "prices": [
                    {
                        "id": "8",
                        "type": "standard",
                        "amount": 2620000,
                        "regular_amount": null,
                        "currency_id": "COP",
                        "last_updated": "2021-10-08T02:19:12Z",
                        "conditions": {
                            "context_restrictions": [],
                            "start_time": null,
                            "end_time": null,
                            "eligible": true
                        },
                        "exchange_rate_context": "DEFAULT",
                        "metadata": {}
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
            "available_quantity": 1,
            "sold_quantity": 2,
            "buying_mode": "buy_it_now",
            "listing_type_id": "gold_special",
            "stop_time": "2041-07-28T04:00:00.000Z",
            "condition": "new",
            "permalink": "https://www.mercadolibre.com.co/apple-airpods-max-gris-espacial/p/MCO17187387",
            "thumbnail": "http://http2.mlstatic.com/D_677999-MLA46654257551_072021-I.jpg",
            "thumbnail_id": "677999-MLA46654257551_072021",
            "accepts_mercadopago": true,
            "installments": {
                "quantity": 36,
                "amount": 72777.78,
                "rate": 0,
                "currency_id": "COP"
            },
            "address": {
                "state_id": "CO-DC",
                "state_name": "Bogotá D.C.",
                "city_id": "TUNPQ0FOVDMyNjIx",
                "city_name": "Antonio Nariño"
            },
            "shipping": {
                "free_shipping": true,
                "mode": "me2",
                "tags": [
                    "self_service_in",
                    "mandatory_free_shipping"
                ],
                "logistic_type": "xd_drop_off",
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
                    "id": "TUNPQ0FOVDMyNjIx",
                    "name": "Antonio Nariño"
                },
                "latitude": "",
                "longitude": ""
            },
            "attributes": [
                {
                    "values": [
                        {
                            "id": "10223971",
                            "name": "A2096",
                            "struct": null,
                            "source": 1
                        }
                    ],
                    "attribute_group_name": "Otros",
                    "source": 1,
                    "name": "Modelo alfanumérico",
                    "value_id": "10223971",
                    "value_struct": null,
                    "attribute_group_id": "OTHERS",
                    "id": "ALPHANUMERIC_MODEL",
                    "value_name": "A2096"
                },
                {
                    "value_name": "Apple",
                    "attribute_group_name": "Otros",
                    "value_id": "9344",
                    "value_struct": null,
                    "values": [
                        {
                            "id": "9344",
                            "name": "Apple",
                            "struct": null,
                            "source": 1
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "source": 1,
                    "id": "BRAND",
                    "name": "Marca"
                },
                {
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "source": 7092,
                    "id": "ITEM_CONDITION",
                    "value_id": "2230284",
                    "value_struct": null,
                    "name": "Condición del ítem",
                    "value_name": "Nuevo",
                    "values": [
                        {
                            "id": "2230284",
                            "name": "Nuevo",
                            "struct": null,
                            "source": 7092
                        }
                    ]
                },
                {
                    "value_id": "9763457",
                    "value_struct": null,
                    "values": [
                        {
                            "source": 1,
                            "id": "9763457",
                            "name": "AirPods Max",
                            "struct": null
                        }
                    ],
                    "source": 1,
                    "id": "MODEL",
                    "name": "Modelo",
                    "attribute_group_name": "Otros",
                    "value_name": "AirPods Max",
                    "attribute_group_id": "OTHERS"
                }
            ],
            "original_price": null,
            "category_id": "MCO3697",
            "official_store_id": null,
            "domain_id": "MCO-HEADPHONES",
            "catalog_product_id": "MCO17187387",
            "tags": [
                "good_quality_picture",
                "loyalty_discount_eligible",
                "immediate_payment",
                "cart_eligible"
            ],
            "catalog_listing": true,
            "use_thumbnail_id": true,
            "offer_score": null,
            "offer_share": null,
            "match_score": null,
            "winner_item_id": null,
            "order_backend": 3
        },
        {
            "id": "MCO540128123",
            "site_id": "MCO",
            "title": "Auriculares Apple AirPods Pro Entrega Inmediata Original",
            "seller": {
                "id": 409975477,
                "permalink": null,
                "registration_date": null,
                "car_dealer": false,
                "real_estate_agency": false,
                "tags": null
            },
            "price": 968000,
            "prices": {
                "id": "MCO540128123",
                "prices": [
                    {
                        "id": "58",
                        "type": "standard",
                        "amount": 968000,
                        "regular_amount": null,
                        "currency_id": "COP",
                        "last_updated": "2021-10-06T21:27:23Z",
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
                        "id": "60",
                        "type": "promotion",
                        "amount": 898900,
                        "regular_amount": 968000,
                        "currency_id": "COP",
                        "last_updated": "2021-10-08T21:29:07Z",
                        "conditions": {
                            "context_restrictions": [
                                "channel_marketplace"
                            ],
                            "start_time": "2021-10-10T05:00:00Z",
                            "end_time": "2021-10-27T17:00:00Z",
                            "eligible": true
                        },
                        "exchange_rate_context": "DEFAULT",
                        "metadata": {
                            "campaign_id": "P-MCO2064005",
                            "promotion_id": "MCO540128123-a22b7b05-f2fc-4ad7-9f17-a0a5799ec299",
                            "promotion_type": "marketplace_campaign",
                            "discount_meli_amount": 69100,
                            "campaign_discount_percentage": 7.14,
                            "campaign_end_date": "2021-10-27T17:00:00Z",
                            "order_item_price": 968000
                        }
                    },
                    {
                        "id": "61",
                        "type": "promotion",
                        "amount": 898900,
                        "regular_amount": 968000,
                        "currency_id": "COP",
                        "last_updated": "2021-10-08T21:29:07Z",
                        "conditions": {
                            "context_restrictions": [
                                "channel_marketplace"
                            ],
                            "start_time": "2021-10-09T05:00:00Z",
                            "end_time": "2021-10-10T04:59:59Z",
                            "eligible": true
                        },
                        "exchange_rate_context": "DEFAULT",
                        "metadata": {
                            "campaign_id": "P-MCO2064005",
                            "promotion_id": "MCO540128123-817e308f-1ade-4fc3-81ea-a0f93af2cba2",
                            "promotion_type": "marketplace_campaign",
                            "discount_meli_amount": 69100,
                            "campaign_discount_percentage": 7.14,
                            "campaign_end_date": "2021-10-10T04:59:59Z",
                            "order_item_price": 968000
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
            "available_quantity": 1,
            "sold_quantity": 150,
            "buying_mode": "buy_it_now",
            "listing_type_id": "gold_special",
            "stop_time": "2040-10-21T19:20:48.000Z",
            "condition": "new",
            "permalink": "https://articulo.mercadolibre.com.co/MCO-540128123-auriculares-apple-airpods-pro-entrega-inmediata-original-_JM",
            "thumbnail": "http://http2.mlstatic.com/D_994797-MCO32747150070_112019-O.jpg",
            "thumbnail_id": "994797-MCO32747150070_112019",
            "accepts_mercadopago": true,
            "installments": {
                "quantity": 36,
                "amount": 26888.89,
                "rate": 0,
                "currency_id": "COP"
            },
            "address": {
                "state_id": "CO-DC",
                "state_name": "Bogotá D.C.",
                "city_id": "TUNPQ0NIQTk2OTI1",
                "city_name": "Chapinero"
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
                    "id": "TUNPQ0NIQTk2OTI1",
                    "name": "Chapinero"
                },
                "latitude": "",
                "longitude": ""
            },
            "attributes": [
                {
                    "id": "ALPHANUMERIC_MODEL",
                    "value_id": "9083040",
                    "value_name": "MWP22AM",
                    "attribute_group_id": "OTHERS",
                    "source": 4709228965570453,
                    "name": "Modelo alfanumérico",
                    "value_struct": null,
                    "values": [
                        {
                            "id": "9083040",
                            "name": "MWP22AM",
                            "struct": null,
                            "source": 4709228965570453
                        }
                    ],
                    "attribute_group_name": "Otros"
                },
                {
                    "name": "Marca",
                    "value_id": "9344",
                    "values": [
                        {
                            "source": 8342579661593500,
                            "id": "9344",
                            "name": "Apple",
                            "struct": null
                        }
                    ],
                    "attribute_group_name": "Otros",
                    "id": "BRAND",
                    "value_name": "Apple",
                    "value_struct": null,
                    "attribute_group_id": "OTHERS",
                    "source": 8342579661593500
                },
                {
                    "value_name": "Nuevo",
                    "values": [
                        {
                            "id": "2230284",
                            "name": "Nuevo",
                            "struct": null,
                            "source": 8342579661593500
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "id": "ITEM_CONDITION",
                    "value_id": "2230284",
                    "attribute_group_name": "Otros",
                    "source": 8342579661593500,
                    "name": "Condición del ítem",
                    "value_struct": null
                },
                {
                    "value_id": null,
                    "value_struct": null,
                    "attribute_group_name": "Otros",
                    "id": "LINE",
                    "value_name": "Airpods",
                    "values": [
                        {
                            "id": null,
                            "name": "Airpods",
                            "struct": null,
                            "source": 3376461333454861
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "source": 3376461333454861,
                    "name": "Línea"
                },
                {
                    "value_name": "AirPods Pro",
                    "value_struct": null,
                    "source": 1000427007642219,
                    "name": "Modelo",
                    "value_id": "7955213",
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "id": "MODEL",
                    "values": [
                        {
                            "id": "7955213",
                            "name": "AirPods Pro",
                            "struct": null,
                            "source": 1000427007642219
                        }
                    ]
                }
            ],
            "original_price": 968000,
            "category_id": "MCO5072",
            "official_store_id": null,
            "domain_id": "MCO-HEADPHONES",
            "catalog_product_id": "MCO15306524",
            "tags": [
                "good_quality_thumbnail",
                "loyalty_discount_eligible",
                "deal_of_the_day",
                "good_quality_picture",
                "immediate_payment",
                "cart_eligible",
                "best_seller_candidate"
            ],
            "order_backend": 4,
            "use_thumbnail_id": false,
            "offer_score": null,
            "offer_share": null,
            "match_score": null,
            "winner_item_id": null
        },
        {
            "id": "MCO531295678",
            "site_id": "MCO",
            "title": "AirPods (segunda Generación) ",
            "seller": {
                "id": 406781619,
                "permalink": null,
                "registration_date": null,
                "car_dealer": false,
                "real_estate_agency": false,
                "tags": null
            },
            "price": 597900,
            "prices": {
                "id": "MCO531295678",
                "prices": [
                    {
                        "id": "9",
                        "type": "standard",
                        "amount": 597900,
                        "regular_amount": null,
                        "currency_id": "COP",
                        "last_updated": "2021-09-30T15:41:18Z",
                        "conditions": {
                            "context_restrictions": [
                                "channel_marketplace"
                            ],
                            "start_time": null,
                            "end_time": null,
                            "eligible": true
                        },
                        "exchange_rate_context": "DEFAULT",
                        "metadata": {}
                    },
                    {
                        "id": "6",
                        "type": "standard",
                        "amount": 576900,
                        "regular_amount": null,
                        "currency_id": "COP",
                        "last_updated": "2021-09-20T17:41:46Z",
                        "conditions": {
                            "context_restrictions": [
                                "channel_mshops"
                            ],
                            "start_time": null,
                            "end_time": null,
                            "eligible": true
                        },
                        "exchange_rate_context": "DEFAULT",
                        "metadata": {}
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
            "available_quantity": 1,
            "sold_quantity": 5,
            "buying_mode": "buy_it_now",
            "listing_type_id": "gold_special",
            "stop_time": "2039-08-15T04:00:00.000Z",
            "condition": "new",
            "permalink": "https://articulo.mercadolibre.com.co/MCO-531295678-airpods-segunda-generacion-_JM",
            "thumbnail": "http://http2.mlstatic.com/D_654594-MCO31893715224_082019-O.jpg",
            "thumbnail_id": "654594-MCO31893715224_082019",
            "accepts_mercadopago": true,
            "installments": {
                "quantity": 36,
                "amount": 16608.33,
                "rate": 0,
                "currency_id": "COP"
            },
            "address": {
                "state_id": "CO-DC",
                "state_name": "Bogotá D.C.",
                "city_id": "TUNPQ0NIQTk2OTI1",
                "city_name": "Chapinero"
            },
            "shipping": {
                "free_shipping": true,
                "mode": "me2",
                "tags": [
                    "self_service_in",
                    "mandatory_free_shipping"
                ],
                "logistic_type": "xd_drop_off",
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
                    "id": "TUNPQ0NIQTk2OTI1",
                    "name": "Chapinero"
                },
                "latitude": "",
                "longitude": ""
            },
            "attributes": [
                {
                    "attribute_group_name": "Otros",
                    "source": 3376461333454861,
                    "value_id": "-1",
                    "value_struct": null,
                    "value_name": null,
                    "values": [
                        {
                            "struct": null,
                            "source": 3376461333454861,
                            "id": "-1",
                            "name": null
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "id": "ALPHANUMERIC_MODEL",
                    "name": "Modelo alfanumérico"
                },
                {
                    "id": "BRAND",
                    "name": "Marca",
                    "value_id": "9344",
                    "value_name": "Apple",
                    "value_struct": null,
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "values": [
                        {
                            "id": "9344",
                            "name": "Apple",
                            "struct": null,
                            "source": 3376461333454861
                        }
                    ],
                    "source": 3376461333454861
                },
                {
                    "values": [
                        {
                            "name": "Nuevo",
                            "struct": null,
                            "source": 6808261514773724,
                            "id": "2230284"
                        }
                    ],
                    "attribute_group_name": "Otros",
                    "source": 6808261514773724,
                    "id": "ITEM_CONDITION",
                    "value_name": "Nuevo",
                    "value_struct": null,
                    "name": "Condición del ítem",
                    "value_id": "2230284",
                    "attribute_group_id": "OTHERS"
                },
                {
                    "id": "LINE",
                    "name": "Línea",
                    "value_struct": null,
                    "values": [
                        {
                            "source": 3376461333454861,
                            "id": null,
                            "name": "AIRPODS 2",
                            "struct": null
                        }
                    ],
                    "source": 3376461333454861,
                    "value_id": null,
                    "value_name": "AIRPODS 2",
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros"
                },
                {
                    "name": "Modelo",
                    "values": [
                        {
                            "id": null,
                            "name": "Airpods",
                            "struct": null,
                            "source": 3376461333454861
                        }
                    ],
                    "id": "MODEL",
                    "value_id": null,
                    "value_name": "Airpods",
                    "value_struct": null,
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "source": 3376461333454861
                }
            ],
            "original_price": null,
            "category_id": "MCO5072",
            "official_store_id": null,
            "domain_id": "MCO-HEADPHONES",
            "catalog_product_id": null,
            "tags": [
                "good_quality_thumbnail",
                "good_quality_picture",
                "immediate_payment",
                "cart_eligible",
                "best_seller_candidate"
            ],
            "order_backend": 5,
            "use_thumbnail_id": false,
            "offer_score": null,
            "offer_share": null,
            "match_score": null,
            "winner_item_id": null
        },
        {
            "id": "MCO598689487",
            "site_id": "MCO",
            "title": "AirPods Pro Auriculares Originales Apple, Mwp22am/a",
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
                "id": "MCO598689487",
                "prices": [
                    {
                        "id": "9",
                        "type": "standard",
                        "amount": 971000,
                        "regular_amount": null,
                        "currency_id": "COP",
                        "last_updated": "2021-09-15T21:30:19Z",
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
                        "id": "12",
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
                            "promotion_id": "741142-MCO598689487",
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
            "available_quantity": 1,
            "sold_quantity": 5,
            "buying_mode": "buy_it_now",
            "listing_type_id": "gold_special",
            "stop_time": "2040-12-11T04:00:00.000Z",
            "condition": "new",
            "permalink": "https://articulo.mercadolibre.com.co/MCO-598689487-airpods-pro-auriculares-originales-apple-mwp22ama-_JM",
            "thumbnail": "http://http2.mlstatic.com/D_614117-MCO44350609129_122020-O.jpg",
            "thumbnail_id": "614117-MCO44350609129_122020",
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
                    "value_id": "9083040",
                    "value_struct": null,
                    "values": [
                        {
                            "struct": null,
                            "source": 3045741222775799,
                            "id": "9083040",
                            "name": "MWP22AM"
                        }
                    ],
                    "attribute_group_name": "Otros",
                    "id": "ALPHANUMERIC_MODEL",
                    "name": "Modelo alfanumérico",
                    "value_name": "MWP22AM",
                    "attribute_group_id": "OTHERS",
                    "source": 3045741222775799
                },
                {
                    "source": 3045741222775799,
                    "id": "BRAND",
                    "name": "Marca",
                    "value_id": "9344",
                    "value_name": "Apple",
                    "values": [
                        {
                            "id": "9344",
                            "name": "Apple",
                            "struct": null,
                            "source": 3045741222775799
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "value_struct": null
                },
                {
                    "value_id": "2230284",
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
                    "attribute_group_name": "Otros",
                    "name": "Condición del ítem",
                    "source": 3045741222775799,
                    "id": "ITEM_CONDITION"
                },
                {
                    "source": 3045741222775799,
                    "value_id": null,
                    "value_name": "Airpods",
                    "value_struct": null,
                    "attribute_group_id": "OTHERS",
                    "id": "LINE",
                    "name": "Línea",
                    "values": [
                        {
                            "name": "Airpods",
                            "struct": null,
                            "source": 3045741222775799,
                            "id": null
                        }
                    ],
                    "attribute_group_name": "Otros"
                },
                {
                    "value_name": "AirPods Pro",
                    "value_struct": null,
                    "attribute_group_name": "Otros",
                    "name": "Modelo",
                    "value_id": "7955213",
                    "attribute_group_id": "OTHERS",
                    "source": 3045741222775799,
                    "id": "MODEL",
                    "values": [
                        {
                            "id": "7955213",
                            "name": "AirPods Pro",
                            "struct": null,
                            "source": 3045741222775799
                        }
                    ]
                }
            ],
            "original_price": 971000,
            "category_id": "MCO5072",
            "official_store_id": null,
            "domain_id": "MCO-HEADPHONES",
            "catalog_product_id": "MCO15306524",
            "tags": [
                "good_quality_picture",
                "good_quality_thumbnail",
                "loyalty_discount_eligible",
                "immediate_payment",
                "cart_eligible"
            ],
            "order_backend": 6,
            "use_thumbnail_id": false,
            "offer_score": null,
            "offer_share": null,
            "match_score": null,
            "winner_item_id": null
        },
        {
            "id": "MCO576829466",
            "site_id": "MCO",
            "title": "Airpodspro Applecase Funda Protectora Forro Estuche Silicona",
            "seller": {
                "id": 429755907,
                "permalink": null,
                "registration_date": null,
                "car_dealer": false,
                "real_estate_agency": false,
                "tags": null
            },
            "price": 16000,
            "prices": {
                "id": "MCO576829466",
                "prices": [
                    {
                        "id": "faafa9fb-1195-462b-9ed7-cc58b57aad33",
                        "type": "standard",
                        "amount": 16000,
                        "regular_amount": null,
                        "currency_id": "COP",
                        "last_updated": "2020-09-02T02:58:51Z",
                        "conditions": {
                            "context_restrictions": [],
                            "start_time": null,
                            "end_time": null,
                            "eligible": true
                        },
                        "exchange_rate_context": "DEFAULT",
                        "metadata": {}
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
            "available_quantity": 100,
            "sold_quantity": 500,
            "buying_mode": "buy_it_now",
            "listing_type_id": "gold_pro",
            "stop_time": "2040-08-07T04:00:00.000Z",
            "condition": "new",
            "permalink": "https://articulo.mercadolibre.com.co/MCO-576829466-airpodspro-applecase-funda-protectora-forro-estuche-silicona-_JM",
            "thumbnail": "http://http2.mlstatic.com/D_925576-MCO43150788812_082020-O.jpg",
            "thumbnail_id": "925576-MCO43150788812_082020",
            "accepts_mercadopago": true,
            "installments": {
                "quantity": 12,
                "amount": 1333.33,
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
                "free_shipping": false,
                "mode": "me2",
                "tags": [
                    "fulfillment",
                    "self_service_in"
                ],
                "logistic_type": "fulfillment",
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
                    "source": 3045741222775799,
                    "name": "Marca",
                    "value_id": "9344",
                    "value_struct": null,
                    "id": "BRAND",
                    "value_name": "Apple",
                    "values": [
                        {
                            "id": "9344",
                            "name": "Apple",
                            "struct": null,
                            "source": 3045741222775799
                        }
                    ]
                },
                {
                    "value_struct": null,
                    "attribute_group_name": "Otros",
                    "source": 3045741222775799,
                    "id": "CELL_BRAND",
                    "name": "Marca del celular",
                    "value_name": null,
                    "value_id": "-1",
                    "values": [
                        {
                            "id": "-1",
                            "name": null,
                            "struct": null,
                            "source": 3045741222775799
                        }
                    ],
                    "attribute_group_id": "OTHERS"
                },
                {
                    "attribute_group_name": "Otros",
                    "id": "CELL_MODEL",
                    "name": "Modelo del celular",
                    "value_struct": null,
                    "attribute_group_id": "OTHERS",
                    "value_id": "-1",
                    "value_name": null,
                    "values": [
                        {
                            "id": "-1",
                            "name": null,
                            "struct": null,
                            "source": 3045741222775799
                        }
                    ],
                    "source": 3045741222775799
                },
                {
                    "id": "ITEM_CONDITION",
                    "value_id": "2230284",
                    "attribute_group_id": "OTHERS",
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
                    "attribute_group_name": "Otros",
                    "source": 3045741222775799
                },
                {
                    "name": "Modelo",
                    "value_id": null,
                    "value_struct": null,
                    "values": [
                        {
                            "id": null,
                            "name": "Airpods Pro",
                            "struct": null,
                            "source": 3045741222775799
                        }
                    ],
                    "attribute_group_name": "Otros",
                    "id": "MODEL",
                    "value_name": "Airpods Pro",
                    "attribute_group_id": "OTHERS",
                    "source": 3045741222775799
                }
            ],
            "differential_pricing": {
                "id": 33602181
            },
            "original_price": null,
            "category_id": "MCO169817",
            "official_store_id": null,
            "domain_id": "MCO-CELLPHONE_COVERS",
            "catalog_product_id": null,
            "tags": [
                "good_quality_picture",
                "good_quality_thumbnail",
                "loyalty_discount_eligible",
                "immediate_payment",
                "cart_eligible",
                "shipping_guaranteed",
                "best_seller_candidate"
            ],
            "order_backend": 7,
            "use_thumbnail_id": false,
            "offer_score": null,
            "offer_share": null,
            "match_score": null,
            "winner_item_id": null
        },
        {
            "id": "MCO651325697",
            "site_id": "MCO",
            "title": "Apple AirPods 2da Gen Con Estuche De Carga Alambrica.",
            "seller": {
                "id": 353486933,
                "permalink": null,
                "registration_date": null,
                "car_dealer": false,
                "real_estate_agency": false,
                "tags": null
            },
            "price": 598900,
            "prices": {
                "id": "MCO651325697",
                "prices": [
                    {
                        "id": "7",
                        "type": "standard",
                        "amount": 598900,
                        "regular_amount": null,
                        "currency_id": "COP",
                        "last_updated": "2021-09-22T14:35:43Z",
                        "conditions": {
                            "context_restrictions": [
                                "channel_marketplace"
                            ],
                            "start_time": null,
                            "end_time": null,
                            "eligible": true
                        },
                        "exchange_rate_context": "DEFAULT",
                        "metadata": {}
                    },
                    {
                        "id": "6",
                        "type": "standard",
                        "amount": 587000,
                        "regular_amount": null,
                        "currency_id": "COP",
                        "last_updated": "2021-09-16T14:23:24Z",
                        "conditions": {
                            "context_restrictions": [
                                "channel_mshops"
                            ],
                            "start_time": null,
                            "end_time": null,
                            "eligible": true
                        },
                        "exchange_rate_context": "DEFAULT",
                        "metadata": {}
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
            "available_quantity": 1,
            "sold_quantity": 5,
            "buying_mode": "buy_it_now",
            "listing_type_id": "gold_special",
            "stop_time": "2041-07-24T04:00:00.000Z",
            "condition": "new",
            "permalink": "https://articulo.mercadolibre.com.co/MCO-651325697-apple-airpods-2da-gen-con-estuche-de-carga-alambrica-_JM",
            "thumbnail": "http://http2.mlstatic.com/D_968214-MLA46317822784_062021-O.jpg",
            "thumbnail_id": "968214-MLA46317822784_062021",
            "accepts_mercadopago": true,
            "installments": {
                "quantity": 36,
                "amount": 16636.11,
                "rate": 0,
                "currency_id": "COP"
            },
            "address": {
                "state_id": "CO-DC",
                "state_name": "Bogotá D.C.",
                "city_id": "TUNPQ0NIQTk2OTI1",
                "city_name": "Chapinero"
            },
            "shipping": {
                "free_shipping": true,
                "mode": "me2",
                "tags": [
                    "self_service_in",
                    "mandatory_free_shipping"
                ],
                "logistic_type": "xd_drop_off",
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
                    "id": "TUNPQ0NIQTk2OTI1",
                    "name": "Chapinero"
                },
                "latitude": "",
                "longitude": ""
            },
            "attributes": [
                {
                    "id": "ALPHANUMERIC_MODEL",
                    "value_id": "8775407",
                    "value_struct": null,
                    "attribute_group_id": "OTHERS",
                    "source": 3045741222775799,
                    "name": "Modelo alfanumérico",
                    "value_name": "MV7N2",
                    "values": [
                        {
                            "struct": null,
                            "source": 3045741222775799,
                            "id": "8775407",
                            "name": "MV7N2"
                        }
                    ],
                    "attribute_group_name": "Otros"
                },
                {
                    "value_id": "9344",
                    "value_name": "Apple",
                    "attribute_group_name": "Otros",
                    "source": 3045741222775799,
                    "attribute_group_id": "OTHERS",
                    "id": "BRAND",
                    "name": "Marca",
                    "value_struct": null,
                    "values": [
                        {
                            "id": "9344",
                            "name": "Apple",
                            "struct": null,
                            "source": 3045741222775799
                        }
                    ]
                },
                {
                    "value_name": "Nuevo",
                    "source": 3045741222775799,
                    "id": "ITEM_CONDITION",
                    "value_id": "2230284",
                    "value_struct": null,
                    "values": [
                        {
                            "struct": null,
                            "source": 3045741222775799,
                            "id": "2230284",
                            "name": "Nuevo"
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "name": "Condición del ítem"
                },
                {
                    "id": "MODEL",
                    "name": "Modelo",
                    "value_id": "9139230",
                    "values": [
                        {
                            "id": "9139230",
                            "name": "AirPods with charging case (2nd generation)",
                            "struct": null,
                            "source": 3045741222775799
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "source": 3045741222775799,
                    "value_name": "AirPods with charging case (2nd generation)",
                    "value_struct": null,
                    "attribute_group_name": "Otros"
                }
            ],
            "original_price": null,
            "category_id": "MCO5072",
            "official_store_id": null,
            "domain_id": "MCO-HEADPHONES",
            "catalog_product_id": "MCO15914455",
            "tags": [
                "good_quality_picture",
                "good_quality_thumbnail",
                "immediate_payment",
                "cart_eligible"
            ],
            "order_backend": 8,
            "use_thumbnail_id": false,
            "offer_score": null,
            "offer_share": null,
            "match_score": null,
            "winner_item_id": null
        },
        {
            "id": "MCO652643229",
            "site_id": "MCO",
            "title": "Audífonos Beats Powerbeats Pro Totalmente Inalámbricos - Negro",
            "seller": {
                "id": 470474833,
                "permalink": null,
                "registration_date": null,
                "car_dealer": false,
                "real_estate_agency": false,
                "tags": null
            },
            "price": 950000,
            "prices": {
                "id": "MCO652643229",
                "prices": [
                    {
                        "id": "2",
                        "type": "standard",
                        "amount": 950000,
                        "regular_amount": null,
                        "currency_id": "COP",
                        "last_updated": "2021-08-04T22:34:47Z",
                        "conditions": {
                            "context_restrictions": [],
                            "start_time": null,
                            "end_time": null,
                            "eligible": true
                        },
                        "exchange_rate_context": "DEFAULT",
                        "metadata": {}
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
            "available_quantity": 18,
            "sold_quantity": 2,
            "buying_mode": "buy_it_now",
            "listing_type_id": "gold_pro",
            "stop_time": "2041-07-29T04:00:00.000Z",
            "condition": "new",
            "permalink": "https://www.mercadolibre.com.co/audifonos-beats-powerbeats-pro-totalmente-inalambricos-negro/p/MCO15293527",
            "thumbnail": "http://http2.mlstatic.com/D_675423-MLA46981734929_082021-I.jpg",
            "thumbnail_id": "675423-MLA46981734929_082021",
            "accepts_mercadopago": true,
            "installments": {
                "quantity": 12,
                "amount": 79166.67,
                "rate": 0,
                "currency_id": "COP"
            },
            "address": {
                "state_id": "CO-CUN",
                "state_name": "Cundinamarca",
                "city_id": "TUNPQ0NPVGFiYzZm",
                "city_name": "Cota"
            },
            "shipping": {
                "free_shipping": true,
                "mode": "me2",
                "tags": [
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
                    "id": "CO-CUN",
                    "name": "Cundinamarca"
                },
                "city": {
                    "id": "TUNPQ0NPVGFiYzZm",
                    "name": "Cota"
                },
                "latitude": "",
                "longitude": ""
            },
            "attributes": [
                {
                    "value_name": "MV6Y2BE/A",
                    "source": 3039037873642762,
                    "value_struct": null,
                    "values": [
                        {
                            "id": null,
                            "name": "MV6Y2BE/A",
                            "struct": null,
                            "source": 3039037873642762
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "id": "ALPHANUMERIC_MODEL",
                    "name": "Modelo alfanumérico",
                    "value_id": null
                },
                {
                    "value_name": "Beats",
                    "values": [
                        {
                            "struct": null,
                            "source": 1,
                            "id": "122872",
                            "name": "Beats"
                        }
                    ],
                    "attribute_group_name": "Otros",
                    "name": "Marca",
                    "value_id": "122872",
                    "value_struct": null,
                    "attribute_group_id": "OTHERS",
                    "source": 1,
                    "id": "BRAND"
                },
                {
                    "value_name": "MV6Y2LL/A",
                    "values": [
                        {
                            "source": 1,
                            "id": "7935220",
                            "name": "MV6Y2LL/A",
                            "struct": null
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "id": "DETAILED_MODEL",
                    "name": "Modelo detallado",
                    "value_id": "7935220",
                    "value_struct": null,
                    "source": 1
                },
                {
                    "value_struct": null,
                    "attribute_group_id": "OTHERS",
                    "id": "ITEM_CONDITION",
                    "value_id": "2230284",
                    "value_name": "Nuevo",
                    "source": 3039037873642762,
                    "name": "Condición del ítem",
                    "values": [
                        {
                            "id": "2230284",
                            "name": "Nuevo",
                            "struct": null,
                            "source": 3039037873642762
                        }
                    ],
                    "attribute_group_name": "Otros"
                },
                {
                    "value_id": null,
                    "value_struct": null,
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "id": "LINE",
                    "name": "Línea",
                    "value_name": "Audífonos",
                    "values": [
                        {
                            "source": 3039037873642762,
                            "id": null,
                            "name": "Audífonos",
                            "struct": null
                        }
                    ],
                    "source": 3039037873642762
                },
                {
                    "source": 1,
                    "name": "Modelo",
                    "value_id": "7935219",
                    "value_name": "Powerbeats Pro",
                    "value_struct": null,
                    "values": [
                        {
                            "struct": null,
                            "source": 1,
                            "id": "7935219",
                            "name": "Powerbeats Pro"
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros",
                    "id": "MODEL"
                }
            ],
            "differential_pricing": {
                "id": 33602181
            },
            "original_price": null,
            "category_id": "MCO3697",
            "official_store_id": 957,
            "domain_id": "MCO-HEADPHONES",
            "catalog_product_id": "MCO15293527",
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
            "order_backend": 9
        },
        {
            "id": "MCO573439427",
            "site_id": "MCO",
            "title": "AirPods 2 Generación Con Estuche De Carga",
            "seller": {
                "id": 123330797,
                "permalink": null,
                "registration_date": null,
                "car_dealer": false,
                "real_estate_agency": false,
                "tags": null
            },
            "price": 579900,
            "prices": {
                "id": "MCO573439427",
                "prices": [
                    {
                        "id": "2",
                        "type": "standard",
                        "amount": 579900,
                        "regular_amount": null,
                        "currency_id": "COP",
                        "last_updated": "2021-09-28T23:06:53Z",
                        "conditions": {
                            "context_restrictions": [],
                            "start_time": null,
                            "end_time": null,
                            "eligible": true
                        },
                        "exchange_rate_context": "DEFAULT",
                        "metadata": {}
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
            "available_quantity": 1,
            "sold_quantity": 3,
            "buying_mode": "buy_it_now",
            "listing_type_id": "gold_special",
            "stop_time": "2040-07-24T04:00:00.000Z",
            "condition": "new",
            "permalink": "https://articulo.mercadolibre.com.co/MCO-573439427-airpods-2-generacion-con-estuche-de-carga-_JM",
            "thumbnail": "http://http2.mlstatic.com/D_679721-MCO44731475609_012021-O.jpg",
            "thumbnail_id": "679721-MCO44731475609_012021",
            "accepts_mercadopago": true,
            "installments": {
                "quantity": 36,
                "amount": 16108.33,
                "rate": 0,
                "currency_id": "COP"
            },
            "address": {
                "state_id": "CO-DC",
                "state_name": "Bogotá D.C.",
                "city_id": "TUNPQ0tFTjQyODYy",
                "city_name": "Kennedy"
            },
            "shipping": {
                "free_shipping": true,
                "mode": "me2",
                "tags": [
                    "self_service_in",
                    "mandatory_free_shipping"
                ],
                "logistic_type": "xd_drop_off",
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
                    "id": "TUNPQ0tFTjQyODYy",
                    "name": "Kennedy"
                },
                "latitude": "",
                "longitude": ""
            },
            "attributes": [
                {
                    "id": "ALPHANUMERIC_MODEL",
                    "value_struct": null,
                    "values": [
                        {
                            "struct": null,
                            "source": 6587939990796619,
                            "id": "3371803",
                            "name": "MMEF2"
                        }
                    ],
                    "source": 6587939990796619,
                    "name": "Modelo alfanumérico",
                    "value_id": "3371803",
                    "value_name": "MMEF2",
                    "attribute_group_id": "OTHERS",
                    "attribute_group_name": "Otros"
                },
                {
                    "id": "BRAND",
                    "value_id": "9344",
                    "value_struct": null,
                    "attribute_group_id": "OTHERS",
                    "source": 3045741222775799,
                    "name": "Marca",
                    "value_name": "Apple",
                    "values": [
                        {
                            "struct": null,
                            "source": 3045741222775799,
                            "id": "9344",
                            "name": "Apple"
                        }
                    ],
                    "attribute_group_name": "Otros"
                },
                {
                    "value_id": "2230284",
                    "attribute_group_id": "OTHERS",
                    "source": 3045741222775799,
                    "id": "ITEM_CONDITION",
                    "name": "Condición del ítem",
                    "values": [
                        {
                            "id": "2230284",
                            "name": "Nuevo",
                            "struct": null,
                            "source": 3045741222775799
                        }
                    ],
                    "attribute_group_name": "Otros",
                    "value_name": "Nuevo",
                    "value_struct": null
                },
                {
                    "attribute_group_name": "Otros",
                    "id": "LINE",
                    "value_name": "AirPods",
                    "values": [
                        {
                            "id": null,
                            "name": "AirPods",
                            "struct": null,
                            "source": 3045741222775799
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "source": 3045741222775799,
                    "name": "Línea",
                    "value_id": null,
                    "value_struct": null
                },
                {
                    "id": "MODEL",
                    "value_id": null,
                    "values": [
                        {
                            "name": "Segunda Generación",
                            "struct": null,
                            "source": 3045741222775799,
                            "id": null
                        }
                    ],
                    "attribute_group_id": "OTHERS",
                    "source": 3045741222775799,
                    "name": "Modelo",
                    "value_name": "Segunda Generación",
                    "value_struct": null,
                    "attribute_group_name": "Otros"
                }
            ],
            "original_price": null,
            "category_id": "MCO5072",
            "official_store_id": null,
            "domain_id": "MCO-HEADPHONES",
            "catalog_product_id": null,
            "tags": [
                "loyalty_discount_eligible",
                "good_quality_picture",
                "good_quality_thumbnail",
                "immediate_payment",
                "cart_eligible"
            ],
            "order_backend": 10,
            "use_thumbnail_id": false,
            "offer_score": null,
            "offer_share": null,
            "match_score": null,
            "winner_item_id": null
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
