

import '../feature_home/domain/entitys/product.dart';

final List<ProductToDisplay> products = [
  ProductToDisplay(
      id: '5b501b3d-5caa-4403-98b6-c5035b0fff17',
      name: 'Nike 1',
      imageUrl:
          'https://images.unsplash.com/photo-1509983165097-0c31a863e3f3?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 300,
      category: 'xxx'),
  ProductToDisplay(
      id: '5b501b3d-5caa-4403-98b6-c5035b0fff17',
      name: 'Nike 2',
      imageUrl:
          'https://images.unsplash.com/photo-1556906781-9a412961c28c?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 1200,
      category: 'xxx'),
  ProductToDisplay(
      id: '5b501b3d-5caa-4403-98b6-c5035b0fff17',
      name: 'Nike 3',
      imageUrl:
          'https://images.unsplash.com/photo-1579298245158-33e8f568f7d3?q=80&w=2990&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 300,
      category: 'xxx'),
];

final Map<String,String> categoryImages = {
"electronics":"https://images.unsplash.com/photo-1518770660439-4636190af475?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZWxlY3Ryb25pY3N8ZW58MHx8MHx8fDA%3D",
"jewelery":"https://images.unsplash.com/photo-1577883751617-803a40e0057b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8amV3ZWxlcnl8ZW58MHx8MHx8fDA%3D",
"men's clothing":"https://plus.unsplash.com/premium_photo-1690359589674-b85931ae8d28?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bWVuJ3MlMjBjbG90aGluZ3xlbnwwfHwwfHx8MA%3D%3D",
"women's clothing":"https://images.unsplash.com/photo-1495121605193-b116b5b9c5fe?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d29tZW4ncyUyMGNsb3RoaW5nfGVufDB8fDB8fHww"
};
