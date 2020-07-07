*** REQUEST METHOD FOR FOOD SERVICE **
<pre>
GET = loaclhost:9000/food
GET = localhost:9000/food/{food_code}
POST = loaclhost:9000/food
PUT = localhost:9000/food/{food_code}
DELETE = localhost:9000/food/{food_code}
</pre>

<pre>
Create Format Food

[
    {
        "food_name": "Nasi Putih",
        "food_price": 5000,
        "food_category": {
            "category_code": "3de4e2c8-bff4-11ea-bdc5-2536a289c646"
        },
        "food_stock": 50
    }
]
</pre>

<pre>
UPDATE Format Food

{
    "food_name": "Jus Mangga",
    "food_price": 10000,
    "food_category": {
        "category_code": "3de57ea4-bff4-11ea-bdc5-2536a289c646"
    },
    "food_stock": 3
}
</pre>

*** REQUEST METHOD FOR TRANSACTION SERVICE **
<pre>
GET = loaclhost:9000/transaction
POST = loaclhost:9000/transaction
</pre>

<pre>
CREATE Format Transaction

{
    "nota_number": "S20200707001",
    "detail_transaction": {
        "qty": 3,
        "food": {
            "food_code": "476525dc-bff5-11ea-bdc5-2536a289c646"
        },
        "additional_food": "-"
    },
    "customer_name": "Sugeng Halu"
}
</pre>

*** REQUEST METHOD FOR REPORT SERVICE **
<pre>
GET = loaclhost:9000/report/day
</pre>

<pre>
{
    "status": 200,
    "message": "Success: Report Of The Day",
    "data": [
        {
            "report": {
                "nota_number": "S20200707",
                "nota_date": "2020-07-07 00:00:00",
                "detail_transaction": {
                    "transaction_id": "",
                    "qty": 3,
                    "food": {
                        "food_code": "476524c4-bff5-11ea-bdc5-2536a289c646",
                        "food_name": "Ayam Goreng",
                        "food_price": 10000,
                        "food_category": {
                            "category_code": "",
                            "category_name": ""
                        },
                        "food_stock": 0,
                        "created_at": "",
                        "updated_at": ""
                    },
                    "additional_food": "-"
                },
                "total_transaction": 30000,
                "customer_name": "Jution Candra Kirana"
            }
        }
    ]
}
</pre>
