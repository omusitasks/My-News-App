import 'package:my_new_app/models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categories = [];

  // Category 1: Business
  CategoryModel category1 = CategoryModel(
    categoryName: "Business",
    imageUrl: "https://images.unsplash.com/photo-1444653614773-995cb1ef9efa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80",
  );
  categories.add(category1);

  // Category 2: Entertainment
  CategoryModel category2 = CategoryModel(
    categoryName: "Entertainment",
    imageUrl: "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
  );
  categories.add(category2);

  // Category 3: General
  CategoryModel category3 = CategoryModel(
    categoryName: "General",
    imageUrl: "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  );
  categories.add(category3);

  // Category 4: Health
  CategoryModel category4 = CategoryModel(
    categoryName: "Health",
    imageUrl: "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80",
  );
  categories.add(category4);

  // Category 5: Science
  CategoryModel category5 = CategoryModel(
    categoryName: "Science",
    imageUrl: "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80",
  );
  categories.add(category5);

  // Category 6: Sports
  CategoryModel category6 = CategoryModel(
    categoryName: "Sports",
    imageUrl: "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80",
  );
  categories.add(category6);

  // Category 7: Technology
  CategoryModel category7 = CategoryModel(
    categoryName: "Technology",
    imageUrl: "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
  );
  categories.add(category7);

  return categories;
}
