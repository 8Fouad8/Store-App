import 'package:flutter/material.dart';
import 'package:store_app/helper/show_snackbar.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product_service.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/widgets/custom_text_form_field.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({super.key});
  static String id = 'UpdateProductPage';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

String? productName, description, price, image;

class _UpdateProductPageState extends State<UpdateProductPage> {
  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Update Product', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.network(
                product.image,
                height: 150,
              ),
              SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'Product Name',
                onChanged: (data) {
                  productName = data;
                },
              ),
              SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'Description',
                onChanged: (data) {
                  description = data;
                },
              ),
              SizedBox(height: 20),
              CustomTextFormField(
                keyboardType: TextInputType.number,
                hintText: 'Price',
                onChanged: (data) {
                  price = data;
                },
              ),
              SizedBox(height: 20),
              CustomTextFormField(

                hintText: 'Image URL',
                onChanged: (data) {
                  image = data;
                },
              ),
              SizedBox(height: 50),
              CustomButton(
                textButton: "Submit",
                ontap: () async{
                  setState(() {
                    isLoading = true;
                  });
                  try  {
                     await updateProduct(product); 
                    showSnackBar(context, "Successfully Updated Product");
                    } catch (e) {
                    print(e);
                    showSnackBar(context, "Failed to update product");
                  }

                  setState(() {
                    isLoading = false;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
      id: product.id,
      title: productName == null ? product.title : productName!,
      price: price == null ? product.price.toString() : price!,
      description: description == null ? product.description : description!,
      image: image == null ? product.image : image!,
      category: product.category,
    );
  }

}
