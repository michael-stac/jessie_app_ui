import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomTextFormFieldController extends GetxController {
  var obscureText = false.obs;
  var wasValidated = false.obs;
}

class CustomTextFormField extends StatelessWidget {
  final CustomTextFormFieldController _controller =
  CustomTextFormFieldController();

  final String? labelText;
  final String? hintText;
  final TextStyle? style, hintStyle;
  final BorderSide? border;
  final bool obscureText, obscureTextWithToggle, readOnly, filled;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;
  final GestureTapCallback? onTap;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;

  CustomTextFormField({
    Key? key,
    this.labelText,
    this.hintText,
    this.style,
    this.hintStyle,
    this.border,
    this.obscureText = false,
    this.obscureTextWithToggle = false,
    this.readOnly = false,
    this.filled = false,
    this.prefixIcon,
    this.suffix,
    this.suffixIcon,
    this.onTap,
    this.controller,
    this.inputType,
    this.inputFormatters,
    this.validator,
    this.onChanged,
  }) : super(key: key) {
    _controller.obscureText.value = obscureTextWithToggle || obscureText;
  }

  InputBorder get _border => OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: filled
        ? BorderSide.none
        : border ??  BorderSide(color: Color(0xffADB5BD)),
  );

  Widget? get _defaultSuffixIcon => obscureTextWithToggle
      ? IconButton(
    onPressed: () => _controller.obscureText.toggle(),
    icon: Icon(
      _controller.obscureText.value
          ? Icons.visibility
          : Icons.visibility_off,
      color: Colors.white38,
    ),
  )
      : null;

  @override
  Widget build(BuildContext context) {
    if (labelText == null || labelText!.isEmpty) return _textFormField;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText!.toUpperCase(),
          style: const TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        _textFormField,
      ],
    );
  }

  Widget get _textFormField {
    return Obx(
          () => TextFormField(
        style: style ?? const TextStyle(fontSize: 14, color: Colors.grey),
        controller: controller,
        validator: (value) {
          if (validator == null) return null;
          _controller.wasValidated.value = true;
          return validator!(value);
        },
        autovalidateMode: _controller.wasValidated.value
            ? AutovalidateMode.onUserInteraction
            : AutovalidateMode.disabled,
        inputFormatters: inputFormatters,
        obscureText: _controller.obscureText.value,
        readOnly: readOnly || filled,
        onTap: onTap,
        onChanged: onChanged,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          filled: filled,
          fillColor: Colors.grey.withOpacity(0.4),
          hintText: hintText,
          hintStyle: hintStyle ?? const TextStyle(fontSize: 14, color: Colors.grey),
          border: _border,
          enabledBorder: _border,
          focusedBorder: _border,
          prefixIcon: prefixIcon,
          suffix: suffix,
          suffixIcon: suffixIcon ?? _defaultSuffixIcon,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
        ),
      ),
    );
  }
}