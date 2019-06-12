shop_kitay = Shop.create(title: "Республика, Китай-город", address: "улица Покровка, 4",
            metro_station: "Китай-город", city: "Москва")
shop_kitay.products.create!(vendor_code: "123asdaA", title: "Война и мир 2", weight: 3.14,
                            color: "red", price: 12, amount: 122, size: 5.8)
shop_kitay.products.create!(vendor_code: "aslkdklj1", title: "Гарри Поттер", weight: 2,
                            color: "blue", price: 12, amount: 12, size: 5)
shop_kitay.products.create!(vendor_code: "123asdaA", title: "Чапаев и Пустота", weight: 3.14,
                            color: "red", price: 12, amount: 122, size: 5.8)

shop_avto = Shop.create(title: "Республика, Автозаводская", address: "ул. Ленинская Слобода, 26",
            metro_station: "Автозаводская", city: "Москва")
shop_avto.products.create!(vendor_code: "123asdaA", title: "Война и мир 2", weight: 3.14,
                            color: "red", price: 12, amount: 122, size: 5.8)
shop_avto.products.create!(vendor_code: "aslkdklj1", title: "Гарри Поттер", weight: 2,
                            color: "blue", price: 12, amount: 12, size: 5)
shop_avto.products.create!(vendor_code: "123asdaA", title: "Чапаев и Пустота", weight: 3.14,
                            color: "red", price: 12, amount: 122, size: 5.8)

shop_arbat = Shop.create(title: "Республика, Арбат", address: "ул. Новый Арбат, 19",
            metro_station: "Арбатская", city: "Москва")
shop_arbat.products.create!(vendor_code: "123asdaA", title: "Война и мир 2", weight: 3.14,
                            color: "red", price: 12, amount: 122, size: 5.8)
shop_arbat.products.create!(vendor_code: "aslkdklj1", title: "Гарри Поттер", weight: 2,
                            color: "blue", price: 12, amount: 12, size: 5)
shop_arbat.products.create!(vendor_code: "123asdaA", title: "Чапаев и Пустота", weight: 3.14,
                            color: "red", price: 12, amount: 122, size: 5.8)
