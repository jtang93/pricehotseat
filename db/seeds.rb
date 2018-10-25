# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Item.destroy
Game.delete_all
Player.delete_all
Choice.delete_all
Round.delete_all
RoundItem.delete_all
Item.delete_all

Item.create({name: '2018 Honda Accord', price: '23750', img_url: "https://st.motortrend.com/uploads/sites/10/2017/07/2018-Honda-Accord-Touring-rear-three-quarter.jpg"})
Item.create({name: 'BMW i8', price: '47500', img_url: "https://www.cars.com/cstatic-images/car-pictures/xl/usc90bmc682a021001.png"})
Item.create({name: "Kawasaki JET SKI® SX-R", price: '9999', img_url: "https://content.kawasaki.com/Content/Uploads/Products/7701/Colors/xjcbpbfm.pol.png"})
Item.create({name: 'Areti Yacht', price: '200629000', img_url: "https://www.fraseryachts.com/yachts-image/areti/Lurssen_yacht_for_sale_Areti_8820.jpg"})
Item.create({name: '2016 Honda Stateline', price: '9999', img_url: "http://www.hondaprokevin.com/wp-content/uploads/ngg_featured/2016-honda-stateline-review-1300-cruiser-motorcycle-bike-vt1300-vt13-v-twin-.jpg"})
Item.create({name: 'Kawasaki Jet Ski STX-15F', price: '9699', img_url: "https://content.kawasaki.com/Content/Uploads/Products/7907/Colors/jlerx4bd.dmm.png"})
Item.create({name: 'Samsung 27.9 cu. ft. Family Hub 4-Door French Door Smart Refrigerator in Stainless Steel with FlexZone', price: '3537', img_url: "https://images.homedepot-static.com/productImages/b8f058b4-b30a-414d-b988-6959b2d04532/svn/stainless-samsung-french-door-refrigerators-rf28n9780sr-64_1000.jpg"})
Item.create({name: 'Riverstone 2-Piece Sierra Chocolate Microfiber Living Room Set', price: '896', img_url: "https://images.homedepot-static.com/productImages/6c853b0e-6ffb-460e-b3cb-c81f6b0097d8/svn/brown-flash-furniture-living-room-sets-rs417001lsset-64_1000.jpg"})
Item.create({name: 'Club 3-Piece Tufted Chocolate Brown Bonded Leather Sofa Set', price: '1997', img_url: "https://images.homedepot-static.com/productImages/4b3dd05a-7928-464e-add9-e214a21895c3/svn/chocolate-brown-corliving-living-room-sets-lzy-141-z1-64_1000.jpg"})
Item.create({name: 'Lifesmart Antigua (LS400DX) 5-Person 22-Jet Plug and Play Spa', price: '2659', img_url: "https://outletspas.com/wp-content/uploads/2018/01/0081279201227_F.jpg"})
Item.create({name: 'Sony - 70 Class - LED - X690E Series - 2160p - Smart - 4K UHD TV with HDR', price: '1000', img_url: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5900/5900135_sd.jpg;maxHeight=640;maxWidth=550"})
Item.create({name: 'DJI Mavic Pro', price: '999', img_url: "https://product4.djicdn.com/uploads/photos/114/medium_4058afad-4331-40ab-9a4e-30b49c72447b.jpg"})
Item.create({name: 'Microsoft Surface Pro 6', price: '899', img_url: "https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE2wVvp?ver=fdc3&q=90&m=6&h=650&w=1600&b=%23FFFFFFFF&l=f&f=jpg&o=t&aim=true"})
Item.create({name: '5.1 Surround Set with Beam & Play:1', price: '1299', img_url: "https://content.sonos.com/cdn_static/dw/image/v2/ABCG_PRD/on/demandware.static/-/Sites-sonos-master/default/dw1292392c/images/speaker-sets/5-1-surround-set-beam-black.png?sw=400&sh=400&sm=fit"})
Item.create({name: 'Canon EOS 80D DSLR', price: '1199', img_url: "https://www.usa.canon.com/internet/wcm/connect/us/667c7337-f450-43da-ba80-4236680196fd/eos80d-ef-s18-135-3q-.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_P1KGHJ01L85180AUEPQQJ53034-667c7337-f450-43da-ba80-4236680196fd-lbI9xCr"})
Item.create({name: 'Samsung 85 Class Q900 QLED Smart 8K UHD TV (2018)', price: '15000', img_url: "https://s7d2.scene7.com/is/image/SamsungUS/01-QN85Q900RAFXZA-091018?$product-details-jpg$"})
Item.create({name: 'Never Summer Peacemaker Snowboard', price: '520', img_url: "https://thumb.grindnetworks.com/ESXGyQSmeKu5QhElkhzyoG-nAmI=/970x1456/filters:format(jpg):quality(80):max_bytes(500000):sharpen(0.2%2C1%2Cfalse):strip_exif():strip_icc()/aHR0cHM6Ly9jZG4tc25vd2JvYXJkaW5nLnRyYW5zd29ybGQubmV0L2Jsb2dzLmRpci80NDIvZmlsZXMvMjAxOC8wOS8zMy1uZXZlcl9zdW1tZXJfMjAxOF80Xzlfc3RvbXBfMDIxNS1iYXNoZXIuanBn"})
Item.create({name: 'Audio-Technica ATH-M50x Studio Monitor Headphones', price: '149', img_url: "https://images-na.ssl-images-amazon.com/images/I/81Hajq6vPiL._SY879_.jpg"})
Item.create({name: 'Brooks Brothers Regent Fit Stretch Wool Two-Button 1818 Suit', price: '898', img_url: "https://brooksbrothers.scene7.com/is/image/BrooksBrothers/MK00781_NAVY_2?$bbproductimages$"})
Item.create({name: "Rolex Oyster Perpetual 39 Mens Automatic Watch 114300", price: '5750', img_url: "https://s.yimg.com/aah/movadobaby/rolex-oyster-perpetual-oyster-15.jpg"})
Item.create({name: '15in Macbook Pro (2018)', price: '2399', img_url: "https://cnet2.cbsistatic.com/img/r55D9EFCaaNpPVUay88jTv5-gZ4=/830x467/2017/06/27/13484418-bfd9-41e2-8f2d-9b4afb072da8/apple-macbook-pro-15-inch-2017-14.jpg"})
