import 'models/categories.dart';
import 'models/product.dart';

final List<Categories> categories = [
  Categories(id: "1", name: 'موبايلات', image: 'assets/images/iphone15pro.png'),
  Categories(id: "2", name: 'سماعات', image: 'assets/images/jbl.jpg'),
  Categories(id: "3", name: 'ساعات ذكية', image: 'assets/images/watch6.jpg'),
  Categories(id: "4", name: 'أجهزة لوحية', image: 'assets/images/ipad.jpg'),
  Categories(id: "5", name: 'إكسسوارات', image: 'assets/images/anker.jpg'),
  Categories(id: "6", name: 'شواحن وكابلات', image: 'assets/images/wire.jpg'),
];
final List<Product> products = [
  Product(
    id: "1",
    name: 'Samsung Galaxy S24 Ultra',
    price: 4799,
    oldPrice: 5299,
    image: 'assets/images/s24.jpg',
    categoryId: "1",
    description:
        'هاتف رائد بشاشة Dynamic AMOLED 2X بحجم 6.8 إنش، مع كاميرا احترافية وأداء قوي للاستخدام اليومي والألعاب.',
    rating: 4.8,
    reviews: 128,
    colors: ['أسود', 'رمادي', 'بنفسجي'],
    sizes: ['256 GB', '512 GB', '1 TB'],
  ),

  Product(
    id: "2",
    name: 'iPhone 15 Pro Max',
    price: 5199,
    oldPrice: 5699,
    image: 'assets/images/iphone15pro.jpg',
    categoryId: "1",
    description:
        'هاتف آيفون بتصميم من التيتانيوم، شاشة Super Retina XDR، كاميرا احترافية وأداء قوي.',
    rating: 4.9,
    reviews: 214,
    colors: ['أسود', 'أزرق', 'تيتانيوم طبيعي'],
    sizes: ['256 GB', '512 GB', '1 TB'],
  ),

  Product(
    id: "3",
    name: 'Samsung Galaxy A55',
    price: 1299,
    oldPrice: 1499,
    image: 'assets/images/a55.jpg',
    categoryId: "1",
    description:
        'هاتف متوازن بشاشة Super AMOLED وكاميرا عالية الدقة وبطارية كبيرة للاستخدام اليومي.',
    rating: 4.6,
    reviews: 96,
    colors: ['أسود', 'أزرق', 'بنفسجي'],
    sizes: ['128 GB', '256 GB'],
  ),

  Product(
    id: "4",
    name: 'Xiaomi Redmi Note 13 Pro',
    price: 899,
    oldPrice: 999,
    image: 'assets/images/redminote13.jpg',
    categoryId: "1",
    description:
        'هاتف عملي بشاشة AMOLED وكاميرا عالية الدقة وأداء ممتاز للاستخدام اليومي.',
    rating: 4.5,
    reviews: 73,
    colors: ['أسود', 'أبيض', 'أخضر'],
    sizes: ['256 GB', '512 GB'],
  ),

  Product(
    id: "5",
    name: 'Samsung Galaxy Buds 2',
    price: 299,
    oldPrice: 349,
    image: 'assets/images/Buds.jpg',
    categoryId: "2",
    description:
        'سماعات لاسلكية صغيرة ومريحة مع جودة صوت ممتازة وتصميم مناسب للاستخدام اليومي.',
    rating: 4.7,
    reviews: 156,
    colors: ['أبيض', 'أسود'],
    sizes: ['Standard'],
  ),

  Product(
    id: "6",
    name: 'Apple AirPods Pro 2',
    price: 699,
    oldPrice: 799,
    image: 'assets/images/airpods.jpg',
    categoryId: "2",
    description:
        'سماعات لاسلكية مع عزل ضوضاء نشط ووضع شفافية وتجربة صوتية عالية الجودة.',
    rating: 4.8,
    reviews: 189,
    colors: ['أبيض'],
    sizes: ['Standard'],
  ),

  Product(
    id: "7",
    name: 'JBL Tune 770NC',
    price: 399,
    oldPrice: 449,
    image: 'assets/images/jbl.jpg',
    categoryId: "2",
    description:
        'سماعات رأس لاسلكية مريحة مع عزل للضوضاء وبطارية تدوم لفترة طويلة.',
    rating: 4.5,
    reviews: 58,
    colors: ['أسود', 'أبيض', 'أزرق'],
    sizes: ['Standard'],
  ),

  Product(
    id: "8",
    name: 'Samsung Galaxy Watch 6',
    price: 899,
    oldPrice: 999,
    image: 'assets/images/watch6.jpg',
    categoryId: "3",
    description:
        'ساعة ذكية بتصميم أنيق وشاشة واضحة ومجموعة من ميزات تتبع النشاط اليومي.',
    rating: 4.6,
    reviews: 87,
    colors: ['أسود', 'فضي'],
    sizes: ['40mm', '44mm'],
  ),

  Product(
    id: "9",
    name: 'Apple Watch Series 9',
    price: 1099,
    oldPrice: 1199,
    image: 'assets/images/applewatch.jpg',
    categoryId: "3",
    description:
        'ساعة ذكية للاستخدام اليومي مع شاشة ساطعة وتصميم أنيق وميزات متعددة.',
    rating: 4.8,
    reviews: 121,
    colors: ['أسود', 'فضي', 'وردي'],
    sizes: ['41mm', '45mm'],
  ),

  Product(
    id: "10",
    name: 'Samsung Galaxy Watch 5',
    price: 699,
    oldPrice: 799,
    image: 'assets/images/watch5.jpg',
    categoryId: "3",
    description:
        'ساعة ذكية بتصميم رياضي وميزات متعددة لمتابعة النشاط والاستخدام اليومي.',
    rating: 4.4,
    reviews: 71,
    colors: ['أسود', 'فضي'],
    sizes: ['40mm', '44mm'],
  ),

  Product(
    id: "11",
    name: 'Samsung Galaxy Tab S9',
    price: 2199,
    oldPrice: 2399,
    image: 'assets/images/s9tab.jpg',
    categoryId: "4",
    description:
        'جهاز لوحي قوي مناسب للدراسة والترفيه والعمل، مع شاشة كبيرة وتجربة استخدام سلسة.',
    rating: 4.7,
    reviews: 64,
    colors: ['رمادي', 'بيج'],
    sizes: ['128 GB', '256 GB'],
  ),

  Product(
    id: "12",
    name: 'iPad Air',
    price: 2499,
    oldPrice: 2699,
    image: 'assets/images/ipad.jpg',
    categoryId: "4",
    description:
        'جهاز لوحي خفيف وقوي مناسب للدراسة والرسم ومشاهدة المحتوى والعمل.',
    rating: 4.8,
    reviews: 98,
    colors: ['أزرق', 'بنفسجي', 'رمادي'],
    sizes: ['128 GB', '256 GB'],
  ),

  Product(
    id: "13",
    name: 'Anker 20W Charger',
    price: 149,
    oldPrice: 179,
    image: 'assets/images/anker.jpg',
    categoryId: "5",
    description:
        'شاحن سريع ومدمج مناسب للهواتف والأجهزة المتوافقة مع تقنية الشحن السريع.',
    rating: 4.6,
    reviews: 42,
    colors: ['أبيض', 'أسود'],
    sizes: ['20W'],
  ),

  Product(
    id: "14",
    name: 'USB-C Fast Charging Cable',
    price: 79,
    oldPrice: 99,
    image: 'assets/images/wire.jpg',
    categoryId: "6",
    description:
        'كابل USB-C عالي الجودة للشحن ونقل البيانات، مناسب للاستخدام اليومي.',
    rating: 4.5,
    reviews: 37,
    colors: ['أسود', 'أبيض'],
    sizes: ['1m', '2m'],
  ),
];
