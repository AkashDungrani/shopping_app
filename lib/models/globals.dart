class Globals {
  static bool isLike = false;
  static List likes = [];
  static List cart = [];
  static int total = 0;

  static List allProducts = [];
}

List<Map<String, dynamic>> productlist = [
  {
    "image": "assets/images/mac.jpeg",
    "Name": "Apple MacBookAir",
    "Price": "80000",
    "qun":1,
    "like":false,
    "des":"Apple MacBook Air 2020 is a macOS laptop with a 13.30-inch display that has a resolution of 2560x1600 pixels. It is powered by a Core i3 processor and it comes with 8GB of RAM. The Apple MacBook Air 2020 packs 256GB of SSD storage. Graphics are powered by Integrated Graphics Processor."
  },
  {"image": "assets/images/i14.jpeg", "Name": "iPhone 14 Pro", "Price": "122999",
    "qun": 1,
    "like": false,
    "des":"The iPhone 14 Pro and Pro Max feature a Super Retina XDR OLED display with a typical maximum brightness of 1,000 nits. However, it can go all the way up to 1,600 nits while watching HDR videos, and 2,000 nits outdoors. The display has a refresh rate of 120 Hz and utilizes LTPO technology."
  },
  {
    "image": "assets/images/oneplus10pro.jpeg",
    "Name": "Oneplus 10 Pro",
    "Price": "66999",
    "qun": 1,
    "like": false,
    "des":"Display: 6.7 inches (17.01 cm), QHD+ AMOLED, 120 Hz Refresh Rate Memory: 12GB RAM, 256GB ROM Processor: Qualcomm Snapdragon 8 Gen 1 Camera: 48 MP + 50 MP + 8 MP Triple Rear & 32 MP Front Camera Battery: 5000 mAh with 50W Fast Charging Security (Lock): In-display Fingerprint Sensor"
  },
  {"image": "assets/images/iwatch.jpeg", "Name": "iWatch", "Price": "70000",
  "qun": 1,
  "like": false,
  "des":"Meet the most rugged and capable Apple Watch ever. With a robust titanium case, precision dual-frequency GPS, up to 36 hours of battery life,1 the freedom of cellular,2 and three specialized bands made for athletes and adventurers of all kinds."
  },
  {
    "image": "assets/images/airdopes.jpeg",
    "Name": "AirPods Pro",
    "Price": "24990",
    "qun": 1,
    "like": false,
    "des":"Music on a more personal note. Adaptive EQ automatically tunes music to your ears. Inward-facing microphones detect what you’re hearing, then adjust low and midrange frequencies to deliver the rich details in every song, customized for you in real time."
  },
  {"image": "assets/images/i13.jpeg", "Name": "iPhone13", "Price": "59999",
    "qun": 1,
    "like": false,
    "des":"The iPhone 13 mini display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is "
  },
  {
    "image": "assets/images/s22.jpeg",
    "Name": "Samsung S22 Ultra",
    "Price": "109999",
    "qun": 1,
    "like": false,
    "des":"The Samsung Galaxy S22 Ultra is the headliner of the S22 series. It's the first S series phone to include Samsung's S Pen. Specifications are top-notch including 6.8-inch Dynamic AMOLED display with 120Hz refresh rate, Snapdragon 8 Gen 1 processor, 5000mAh battery, up to 12gigs of RAM, and 1TB of storage."
  },
  {
    "image": "assets/images/gp7pro.jpeg",
    "Name": "Google Pixel 7 Pro",
    "Price": "80000",
    "qun": 1,
    "like": false,
    "des":"Google Pixel 7 Pro was launched in India in October last year. The smartphone debuted in the market at a starting price of Rs. 59,999. According to a research, Pixel 7 Pro's bill of materials (BoM) cost has more contribution from Samsung, as compared to Google. Samsung reportedly accounts for more than half of the Google Pixel 7 Pro’s bill of materials (BoM) cost."
  },
  {"image": "assets/images/i11.jpeg", "Name": "Iphone 11", "Price": "60000",
    "qun": 1,
    "like": false,
    "des":"The iPhone 11 has a 6.1-inch (15 cm) IPS LCD with a resolution is 1792 × 828 pixels (1.4 megapixels) at a pixel density of 326 PPI with a maximum brightness of 625 nits and a 1400:1 contrast ratio and it is equivalent to the iPhone XR. It supports Dolby Vision, HDR10, True-Tone, and a wide color gamut."
  },
  {"image": "assets/images/oppoa74.jpeg", "Name": "Oppo A74", "Price": "20000","qun":1,
  "like": false,
  "des":"Be the first one to experience OPPO latest products. Save up to 38% Off 1-Year OPPO Care. Students can Get 5% Off on OPPO Online Store, Claim ₹2100 New User Welcome Voucher Now. 100% Secure Payments. Free Shipping."},
  {"image": "assets/images/mi.jpeg", "Name": "Mi 11 ", "Price": "15000",
    "qun": 1,
    "like": false,
    "des":"Xiaomi Mi 11 mobile was launched on 28th December 2020. The phone comes with a 6.81-inch touchscreen display offering a resolution of 1440x3200 pixels at a pixel density of 515 pixels per inch (ppi) and an aspect ratio of 20:9. The display sports Gorilla Glass for protection. Xiaomi Mi 11 is powered by an octa-core Qualcomm Snapdragon 888 processor. It comes with 8GB of RAM."
  },
];

List<Map<String, dynamic>> category = [
  {
    "name": "Mobiles",
    "page": "mobile",
  },
  {
    "name": "Watch",
    "page": "watch",
  },
  {
    "name": "Airpods",
    "page": "airpods",
  },
];
List<Map<String, dynamic>> mobile = [
  {"image": "assets/images/i13.jpeg", "Name": "iPhone13", "Price": "59999"},
  {
    "image": "assets/images/s22.jpeg",
    "Name": "Samsung S22 Ultra",
    "Price": "109999"
  },
  {
    "image": "assets/images/gp7pro.jpeg",
    "Name": "Google Pixel 7 Pro",
    "Price": "80000"
  },
  {"image": "assets/images/i11.jpeg", "Name": "Iphone 11", "Price": "60000"},
  {"image": "assets/images/oppoa74.jpeg", "Name": "Oppo A74", "Price": "20000"},
  {"image": "assets/images/mi.jpeg", "Name": "Mi 11 ", "Price": "15000"},
];
int sum = 0;
