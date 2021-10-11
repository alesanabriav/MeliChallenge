//
//  SellerResponseJSON.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import Foundation

let sellerResponseJSON = """
{
	"site_id": "MCO",
	"country_default_time_zone": "GMT-05:00",
	"seller": {
		"id": 162681369,
		"nickname": "CELUMOVIL STORE",
		"permalink": "http://perfil.mercadolibre.com.co/CELUMOVIL+STORE",
		"registration_date": "2014-07-16T15:56:16.000-04:00",
		"seller_reputation": {
			"level_id": "5_green",
			"power_seller_status": "platinum",
			"transactions": {
				"canceled": 1208,
				"period": "historic",
				"total": 23762,
				"ratings": {
					"negative": 0.02,
					"neutral": 0.02,
					"positive": 0.96
				},
				"completed": 22554
			},
			"metrics": {
				"sales": {
					"period": "60 days",
					"completed": 3929
				}
			}
		},
		"real_estate_agency": false,
		"car_dealer": false,
		"tags": [
			"normal",
			"mshops",
			"messages_as_seller"
		],
		"eshop": null
	},
	"paging": {
		"total": 110,
		"primary_results": 110,
		"offset": 0,
		"limit": 1
	},
	"results": [
		{
			"id": "MCO656920668",
			"site_id": "MCO",
			"title": "Xiaomi Pocophone Poco X3 Pro Dual Sim 256 Gb Azul Helado 8 Gb Ram",
			"seller": {
				"id": 162681369,
				"permalink": "http://perfil.mercadolibre.com.co/CELUMOVIL+STORE",
				"registration_date": "2014-07-16T15:56:16.000-04:00",
				"car_dealer": false,
				"real_estate_agency": false,
				"tags": [
					"normal",
					"mshops",
					"messages_as_seller"
				],
				"seller_reputation": {
					"power_seller_status": "platinum",
					"level_id": "5_green",
					"metrics": {
						"cancellations": {
							"period": "60 days",
							"rate": 7.0E-4,
							"value": 3
						},
						"claims": {
							"period": "60 days",
							"rate": 0.0065,
							"value": 27
						},
						"delayed_handling_time": {
							"period": "60 days",
							"rate": 0.004,
							"value": 16
						},
						"sales": {
							"period": "60 days",
							"completed": 3929
						}
					},
					"transactions": {
						"canceled": 1208,
						"period": "historic",
						"total": 23762,
						"ratings": {
							"negative": 0.02,
							"neutral": 0.02,
							"positive": 0.96
						},
						"completed": 22554
					}
				},
				"nickname": "CELUMOVIL STORE"
			},
			"price": 1134900,
			"prices": {
				"id": "MCO656920668",
				"prices": [
					{
						"id": "42",
						"type": "standard",
						"amount": 1239800,
						"regular_amount": null,
						"currency_id": "COP",
						"last_updated": "2021-10-01T18:58:22Z",
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
						"amount": 1079900,
						"regular_amount": 1499000,
						"currency_id": "COP",
						"last_updated": "2021-10-07T13:35:16Z",
						"conditions": {
							"context_restrictions": [
								"channel_marketplace"
							],
							"start_time": "2021-10-07T05:00:00Z",
							"end_time": "2021-10-12T03:59:00Z",
							"eligible": true
						},
						"exchange_rate_context": "DEFAULT",
						"metadata": {
							"campaign_id": "P-MCO2064005",
							"promotion_id": "MCO656920668-8e075ab9-c09c-4761-b190-01ff9e80f6c9",
							"promotion_type": "marketplace_campaign",
							"discount_meli_amount": 55000,
							"campaign_discount_percentage": 27.96,
							"campaign_end_date": "2021-10-12T03:59:00Z",
							"order_item_price": 1134900
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
			"available_quantity": 37,
			"sold_quantity": 215,
			"buying_mode": "buy_it_now",
			"listing_type_id": "gold_special",
			"stop_time": "2041-08-12T04:00:00.000Z",
			"condition": "new",
			"permalink": "https://www.mercadolibre.com.co/xiaomi-pocophone-poco-x3-pro-dual-sim-256-gb-azul-helado-8-gb-ram/p/MCO17798685",
			"thumbnail": "http://http2.mlstatic.com/D_816537-MLA46765507998_072021-I.jpg",
			"thumbnail_id": "816537-MLA46765507998_072021",
			"accepts_mercadopago": true,
			"installments": {
				"quantity": 36,
				"amount": 31525,
				"rate": 0,
				"currency_id": "COP"
			},
			"address": {
				"state_id": "CO-DC",
				"state_name": "Bogotá D.C.",
				"city_id": "TUNPQ1NBTjkyOTU1",
				"city_name": "Santa Fe"
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
					"id": "TUNPQ1NBTjkyOTU1",
					"name": "Santa Fe"
				},
				"latitude": "",
				"longitude": ""
			},
			"attributes": [
				{
					"value_struct": null,
					"source": 1,
					"value_id": "59387",
					"value_name": "Xiaomi",
					"values": [
						{
							"id": "59387",
							"name": "Xiaomi",
							"struct": null,
							"source": 1
						}
					],
					"attribute_group_id": "OTHERS",
					"attribute_group_name": "Otros",
					"id": "BRAND",
					"name": "Marca"
				},
				{
					"value_name": "Adreno 640",
					"attribute_group_id": "OTHERS",
					"source": 1,
					"value_struct": null,
					"values": [
						{
							"id": "7686099",
							"name": "Adreno 640",
							"struct": null,
							"source": 1
						}
					],
					"attribute_group_name": "Otros",
					"id": "GPU_MODEL",
					"name": "Modelo de GPU",
					"value_id": "7686099"
				},
				{
					"id": "ITEM_CONDITION",
					"values": [
						{
							"id": "2230284",
							"name": "Nuevo",
							"struct": null,
							"source": 2860837171021627
						}
					],
					"source": 2860837171021627,
					"attribute_group_id": "OTHERS",
					"attribute_group_name": "Otros",
					"name": "Condición del ítem",
					"value_id": "2230284",
					"value_name": "Nuevo",
					"value_struct": null
				},
				{
					"value_name": "Pocophone",
					"attribute_group_id": "OTHERS",
					"attribute_group_name": "Otros",
					"source": 4709228965570453,
					"id": "LINE",
					"value_id": "11073095",
					"values": [
						{
							"name": "Pocophone",
							"struct": null,
							"source": 4709228965570453,
							"id": "11073095"
						}
					],
					"name": "Línea",
					"value_struct": null
				},
				{
					"name": "Modelo",
					"value_id": "10185056",
					"value_struct": null,
					"attribute_group_name": "Otros",
					"source": 1,
					"id": "MODEL",
					"value_name": "Poco X3 Pro",
					"values": [
						{
							"id": "10185056",
							"name": "Poco X3 Pro",
							"struct": null,
							"source": 1
						}
					],
					"attribute_group_id": "OTHERS"
				},
				{
					"value_id": "10206396",
					"attribute_group_id": "OTHERS",
					"attribute_group_name": "Otros",
					"source": 1,
					"id": "PROCESSOR_MODEL",
					"name": "Modelo del procesador",
					"value_name": "Snapdragon 860",
					"value_struct": null,
					"values": [
						{
							"id": "10206396",
							"name": "Snapdragon 860",
							"struct": null,
							"source": 1
						}
					]
				},
				{
					"name": "Peso",
					"value_id": "2122442",
					"value_name": "215 g",
					"value_struct": {
						"number": 215,
						"unit": "g"
					},
					"values": [
						{
							"id": "2122442",
							"name": "215 g",
							"struct": {
								"number": 215,
								"unit": "g"
							},
							"source": 1
						}
					],
					"id": "WEIGHT",
					"attribute_group_id": "OTHERS",
					"attribute_group_name": "Otros",
					"source": 1
				}
			],
			"original_price": 1134900,
			"category_id": "MCO1055",
			"official_store_id": null,
			"domain_id": "MCO-CELLPHONES",
			"catalog_product_id": "MCO17798685",
			"tags": [
				"good_quality_picture",
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
					"id": "MCO1051",
					"name": "Celulares y Teléfonos",
					"results": 89
				},
				{
					"id": "MCO1648",
					"name": "Computación",
					"results": 10
				},
				{
					"id": "MCO1000",
					"name": "Electrónica, Audio y Video",
					"results": 6
				},
				{
					"id": "MCO5726",
					"name": "Electrodomésticos",
					"results": 5
				},
				{
					"id": "MCO180800",
					"name": "Salud y Equipamiento Médico",
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
					"results": 50
				},
				{
					"id": "10-100",
					"name": "Desde 10% OFF",
					"results": 29
				},
				{
					"id": "15-100",
					"name": "Desde 15% OFF",
					"results": 27
				},
				{
					"id": "20-100",
					"name": "Desde 20% OFF",
					"results": 25
				},
				{
					"id": "25-100",
					"name": "Desde 25% OFF",
					"results": 17
				},
				{
					"id": "30-100",
					"name": "Desde 30% OFF",
					"results": 7
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
					"results": 107
				},
				{
					"id": "CO-CUN",
					"name": "Cundinamarca",
					"results": 3
				}
			]
		},
		{
			"id": "price",
			"name": "Precio",
			"type": "range",
			"values": [
				{
					"id": "*-950000.0",
					"name": "Hasta $950.000",
					"results": 29
				},
				{
					"id": "950000.0-1500000.0",
					"name": "$950.000 a $1.500.000",
					"results": 30
				},
				{
					"id": "1500000.0-*",
					"name": "Más de $1.500.000",
					"results": 51
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
					"results": 110
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
					"results": 110
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
					"results": 110
				},
				{
					"id": "fulfillment",
					"name": "Full",
					"results": 8
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
					"results": 110
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
					"results": 100
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
					"results": 110
				}
			]
		},
		{
			"id": "all_payment_methods_discount",
			"name": "Descuentos para todos los medios de pago",
			"type": "number",
			"values": [
				{
					"id": "1-100",
					"name": "Desde 1% OFF",
					"results": 32
				},
				{
					"id": "5-100",
					"name": "Desde 5% OFF",
					"results": 26
				},
				{
					"id": "25-100",
					"name": "Desde 25% OFF",
					"results": 5
				},
				{
					"id": "30-100",
					"name": "Desde 30% OFF",
					"results": 3
				}
			]
		},
		{
			"id": "price_campaign_id",
			"name": "Campaña",
			"type": "number",
			"values": [
				{
					"id": "P-MCO2064005",
					"name": "P-MCO2064005",
					"results": 22
				},
				{
					"id": "MCO2298",
					"name": "MCO2298",
					"results": 20
				},
				{
					"id": "P-MCO2099001",
					"name": "P-MCO2099001",
					"results": 10
				}
			]
		},
		{
			"id": "promotion_type",
			"name": "Tipo de promoción",
			"type": "text",
			"values": [
				{
					"id": "deal_of_the_day",
					"name": "Oferta del día",
					"results": 2
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
					"results": 110
				}
			]
		},
		{
			"id": "BRAND",
			"name": "Marca",
			"type": "STRING",
			"values": [
				{
					"id": "59387",
					"name": "Xiaomi",
					"results": 55
				},
				{
					"id": "206",
					"name": "Samsung",
					"results": 17
				},
				{
					"id": "9344",
					"name": "Apple",
					"results": 10
				},
				{
					"id": "8112646",
					"name": "Realme",
					"results": 7
				},
				{
					"id": "2503",
					"name": "Motorola",
					"results": 7
				},
				{
					"id": "8216",
					"name": "Dell",
					"results": 3
				},
				{
					"id": "8784",
					"name": "Huawei",
					"results": 2
				},
				{
					"id": "7494",
					"name": "Lenovo",
					"results": 2
				},
				{
					"id": "7294334",
					"name": "Asus",
					"results": 2
				},
				{
					"id": "15903",
					"name": "Acer",
					"results": 2
				},
				{
					"id": "9009352",
					"name": "Infinix",
					"results": 1
				},
				{
					"id": "49944",
					"name": "HP",
					"results": 1
				},
				{
					"id": "215",
					"name": "LG",
					"results": 1
				}
			]
		},
		{
			"id": "DISPLAY_SIZE",
			"name": "Tamaño de la pantalla",
			"type": "range",
			"values": [
				{
					"id": "(*-6.43\")",
					"name": "Menos de 6,43 \"",
					"results": 24
				},
				{
					"id": "[6.43\"-6.67\")",
					"name": "6,43 a 6,57 \"",
					"results": 33
				},
				{
					"id": "[6.67\"-6.8\")",
					"name": "6,67 a 6,7 \"",
					"results": 20
				},
				{
					"id": "[6.8\"-*)",
					"name": "6,8 \" o más",
					"results": 23
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
					"results": 110
				}
			]
		},
		{
			"id": "LINE",
			"name": "Línea",
			"type": "STRING",
			"values": [
				{
					"id": "199791",
					"name": "Redmi",
					"results": 23
				},
				{
					"id": "11073095",
					"name": "Pocophone",
					"results": 12
				},
				{
					"id": "59783",
					"name": "Mi",
					"results": 11
				},
				{
					"id": "58993",
					"name": "iPhone",
					"results": 9
				},
				{
					"id": "249991",
					"name": "Galaxy S",
					"results": 6
				},
				{
					"id": "92980",
					"name": "8 Series",
					"results": 3
				},
				{
					"id": "90",
					"name": "Series 5",
					"results": 3
				},
				{
					"id": "6982639",
					"name": "Galaxy M",
					"results": 3
				},
				{
					"id": "52041",
					"name": "Inspiron",
					"results": 3
				},
				{
					"id": "322859",
					"name": "Galaxy Note",
					"results": 3
				},
				{
					"id": "99483",
					"name": "VivoBook",
					"results": 2
				},
				{
					"id": "975255",
					"name": "Moto E",
					"results": 2
				},
				{
					"id": "51851",
					"name": "One",
					"results": 2
				},
				{
					"id": "3073863",
					"name": "Moto G",
					"results": 2
				},
				{
					"id": "107809",
					"name": "P Series",
					"results": 2
				},
				{
					"id": "106915",
					"name": "Series 4",
					"results": 2
				},
				{
					"id": "8729575",
					"name": "Swift 3",
					"results": 1
				},
				{
					"id": "7101090",
					"name": "AI ThinQ",
					"results": 1
				},
				{
					"id": "5639416",
					"name": "Edge",
					"results": 1
				},
				{
					"id": "27211",
					"name": "IdeaPad",
					"results": 1
				},
				{
					"id": "100226",
					"name": "Chromebook",
					"results": 1
				}
			]
		},
		{
			"id": "MAIN_COLOR",
			"name": "Color principal",
			"type": "list",
			"values": [
				{
					"id": "2450295",
					"name": "Negro",
					"results": 37
				},
				{
					"id": "2450293",
					"name": "Azul",
					"results": 27
				},
				{
					"id": "2450308",
					"name": "Blanco",
					"results": 23
				},
				{
					"id": "2450294",
					"name": "Gris",
					"results": 12
				},
				{
					"id": "2450314",
					"name": "Verde",
					"results": 9
				},
				{
					"id": "2450311",
					"name": "Violeta",
					"results": 6
				},
				{
					"id": "2450278",
					"name": "Celeste",
					"results": 5
				},
				{
					"id": "2450312",
					"name": "Rosa",
					"results": 4
				},
				{
					"id": "2450307",
					"name": "Rojo",
					"results": 4
				},
				{
					"id": "2450289",
					"name": "Dorado",
					"results": 3
				},
				{
					"id": "2450281",
					"name": "Beige",
					"results": 3
				},
				{
					"id": "2450299",
					"name": "Gris oscuro",
					"results": 2
				},
				{
					"id": "2450296",
					"name": "Amarillo",
					"results": 2
				},
				{
					"id": "2450321",
					"name": "Lila",
					"results": 1
				},
				{
					"id": "2450320",
					"name": "Turquesa",
					"results": 1
				},
				{
					"id": "2450316",
					"name": "Lavanda",
					"results": 1
				},
				{
					"id": "2450310",
					"name": "Verde musgo",
					"results": 1
				},
				{
					"id": "2450309",
					"name": "Dorado oscuro",
					"results": 1
				},
				{
					"id": "2450306",
					"name": "Azul oscuro",
					"results": 1
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
					"results": 110
				}
			]
		},
		{
			"id": "WITH_FINGERPRINT_READER",
			"name": "Otras características",
			"type": "boolean",
			"values": [
				{
					"id": "242085",
					"name": "Con lector de huella digital",
					"results": 74
				}
			]
		}
	]
}
"""
