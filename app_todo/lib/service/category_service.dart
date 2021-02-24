import 'package:app_todo/models/category.dart';
import 'package:app_todo/database/repository.dart';

class CategoryService {
  Repository _repository;
  CategoryService() {
    _repository = Repository();
  }

  saveCategory(Category category) async {
    print(category.name + ' ' + category.description);
    return await _repository.insertData("categories", category.categoryMap());
  }

  readCategory() async {
    return await _repository.readData('categories');
  }
}
