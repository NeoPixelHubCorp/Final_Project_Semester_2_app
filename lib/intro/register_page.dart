// // // import 'package:final_project_pengaduan_masyarakat_sem2/constant/color.dart';
// // // import 'package:flutter/gestures.dart';
// // // import 'package:flutter/material.dart';

// // // class RegisterPage extends StatefulWidget {
// // //   const RegisterPage({super.key});

// // //   @override
// // //   State<RegisterPage> createState() => _RegisterPageState();
// // // }

// // // class _RegisterPageState extends State<RegisterPage> {
// // //   final TextEditingController _nameController = TextEditingController();
// // //   final TextEditingController _emailController = TextEditingController();
// // //   final TextEditingController _passwordController = TextEditingController();
// // //   final TextEditingController _confirmPasswordController =
// // //       TextEditingController();

// // //   bool _obscurePassword = true;
// // //   bool _obscureConfirmPassword = true;
// // //   bool _isPasswordValid = false;
// // //   bool _isButtonActive = false;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _nameController.addListener(_validateForm);
// // //     _emailController.addListener(_validateForm);
// // //     _passwordController.addListener(_validateForm);
// // //     _confirmPasswordController.addListener(_validateForm);
// // //     _passwordController.addListener(_validatePassword);
// // //   }

// // //   void _validateForm() {
// // //     setState(() {
// // //       _isButtonActive = _nameController.text.isNotEmpty &&
// // //           _emailController.text.isNotEmpty &&
// // //           _passwordController.text.isNotEmpty &&
// // //           _confirmPasswordController.text.isNotEmpty;
// // //     });
// // //   }

// // //   void _validatePassword() {
// // //     setState(() {
// // //       _isPasswordValid = _passwordController.text.length >= 8;
// // //     });
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _nameController.dispose();
// // //     _emailController.dispose();
// // //     _passwordController.dispose();
// // //     _confirmPasswordController.dispose();
// // //     super.dispose();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: SafeArea(
// // //         child: SingleChildScrollView(
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               Container(
// // //                 width: double.infinity,
// // //                 height: 150,
// // //                 decoration: const BoxDecoration(
// // //                   color: Colors.blue,
// // //                   borderRadius: BorderRadius.only(
// // //                     bottomRight: Radius.circular(390),
// // //                   ),
// // //                 ),
// // //                 padding: const EdgeInsets.only(top: 60, left: 20),
// // //                 alignment: Alignment.topLeft,
// // //                 child: Image.asset(
// // //                   'assets/Logoo.png',
// // //                   width: 111,
// // //                   height: 50,
// // //                 ),
// // //               ),
// // //               Padding(
// // //                 padding:
// // //                     const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     const Text(
// // //                       'Daftar Akun',
// // //                       style: TextStyle(
// // //                         fontSize: 20,
// // //                         fontWeight: FontWeight.bold,
// // //                         color: Colors.black,
// // //                       ),
// // //                     ),
// // //                     const SizedBox(height: 24),
// // //                     const Text('Nama Lengkap',
// // //                         style: TextStyle(fontSize: 14, color: AppColor.gray)),
// // //                     const SizedBox(height: 8),
// // //                     TextField(
// // //                       controller: _nameController,
// // //                       decoration: InputDecoration(
// // //                         border: OutlineInputBorder(
// // //                           borderRadius: BorderRadius.circular(12),
// // //                         ),
// // //                         focusedBorder: OutlineInputBorder(
// // //                           borderRadius: BorderRadius.circular(12),
// // //                           borderSide:
// // //                               const BorderSide(color: Colors.blue, width: 2),
// // //                         ),
// // //                       ),
// // //                     ),
// // //                     const SizedBox(height: 20),
// // //                     const Text('Alamat e-mail',
// // //                         style: TextStyle(fontSize: 14, color: AppColor.gray)),
// // //                     const SizedBox(height: 8),
// // //                     TextField(
// // //                       controller: _emailController,
// // //                       decoration: InputDecoration(
// // //                         border: OutlineInputBorder(
// // //                           borderRadius: BorderRadius.circular(12),
// // //                         ),
// // //                         focusedBorder: OutlineInputBorder(
// // //                           borderRadius: BorderRadius.circular(12),
// // //                           borderSide:
// // //                               const BorderSide(color: Colors.blue, width: 2),
// // //                         ),
// // //                       ),
// // //                     ),
// // //                     const SizedBox(height: 20),
// // //                     const Text('Kata sandi',
// // //                         style: TextStyle(fontSize: 14, color: AppColor.gray)),
// // //                     const SizedBox(height: 8),
// // //                     TextField(
// // //                       controller: _passwordController,
// // //                       obscureText: _obscurePassword,
// // //                       decoration: InputDecoration(
// // //                         border: OutlineInputBorder(
// // //                           borderRadius: BorderRadius.circular(12),
// // //                         ),
// // //                         focusedBorder: OutlineInputBorder(
// // //                           borderRadius: BorderRadius.circular(12),
// // //                           borderSide:
// // //                               const BorderSide(color: Colors.blue, width: 2),
// // //                         ),
// // //                         suffixIcon: IconButton(
// // //                           icon: Image.asset(
// // //                             _obscurePassword
// // //                                 ? 'assets/hide.png'
// // //                                 : 'assets/show.png',
// // //                             width: 24,
// // //                             height: 24,
// // //                           ),
// // //                           onPressed: () {
// // //                             setState(() {
// // //                               _obscurePassword = !_obscurePassword;
// // //                             });
// // //                           },
// // //                         ),
// // //                       ),
// // //                     ),
// // //                     const SizedBox(height: 4),
// // //                     Row(
// // //                       children: [
// // //                         SizedBox(
// // //                           width: 24,
// // //                           height: 24,
// // //                           child: Checkbox(
// // //                             value: _isPasswordValid,
// // //                             onChanged: null,
// // //                             activeColor: Colors.blue,
// // //                           ),
// // //                         ),
// // //                         const SizedBox(width: 8),
// // //                         const Text(
// // //                           'Kata sandi harus berisi minimal 8 karakter',
// // //                           style: TextStyle(fontSize: 12, color: AppColor.gray),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                     const SizedBox(height: 20),
// // //                     const Text('Konfirmasi kata sandi',
// // //                         style: TextStyle(fontSize: 14, color: AppColor.gray)),
// // //                     const SizedBox(height: 8),
// // //                     TextField(
// // //                       controller: _confirmPasswordController,
// // //                       obscureText: _obscureConfirmPassword,
// // //                       decoration: InputDecoration(
// // //                         border: OutlineInputBorder(
// // //                           borderRadius: BorderRadius.circular(12),
// // //                         ),
// // //                         focusedBorder: OutlineInputBorder(
// // //                           borderRadius: BorderRadius.circular(12),
// // //                           borderSide:
// // //                               const BorderSide(color: Colors.blue, width: 2),
// // //                         ),
// // //                         suffixIcon: IconButton(
// // //                           icon: Image.asset(
// // //                             _obscureConfirmPassword
// // //                                 ? 'assets/hide.png'
// // //                                 : 'assets/show.png',
// // //                             width: 24,
// // //                             height: 24,
// // //                           ),
// // //                           onPressed: () {
// // //                             setState(() {
// // //                               _obscureConfirmPassword =
// // //                                   !_obscureConfirmPassword;
// // //                             });
// // //                           },
// // //                         ),
// // //                       ),
// // //                     ),
// // //                     const SizedBox(height: 40),
// // //                     SizedBox(
// // //                       width: double.infinity,
// // //                       height: 50,
// // //                       child: ElevatedButton(
// // //                         onPressed: _isButtonActive ? () {} : null,
// // //                         style: ElevatedButton.styleFrom(
// // //                           backgroundColor:
// // //                               _isButtonActive ? Colors.blue : Colors.grey,
// // //                           shape: RoundedRectangleBorder(
// // //                             borderRadius: BorderRadius.circular(12),
// // //                           ),
// // //                         ),
// // //                         child: const Text(
// // //                           'Daftar',
// // //                           style: TextStyle(
// // //                             fontWeight: FontWeight.bold,
// // //                             color: Colors.white,
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ),
// // //                     const SizedBox(height: 24),
// // //                     Center(
// // //                       child: RichText(
// // //                         text: TextSpan(
// // //                           text: 'Sudah punya akun? ',
// // //                           style: const TextStyle(color: Colors.black),
// // //                           children: [
// // //                             TextSpan(
// // //                               text: 'Masuk',
// // //                               style: const TextStyle(
// // //                                   color: Colors.blue,
// // //                                   fontWeight: FontWeight.bold),
// // //                               recognizer: TapGestureRecognizer()
// // //                                 ..onTap = () {
// // //                                   Navigator.pop(context);
// // //                                 },
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                     ),
// // //                     const SizedBox(height: 32),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:final_project_pengaduan_masyarakat_sem2/constant/color.dart';
// // import 'package:flutter/gestures.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:final_project_pengaduan_masyarakat_sem2/auth/bloc/register/register_bloc.dart';

// // class RegisterPage extends StatefulWidget {
// //   const RegisterPage({super.key});

// //   @override
// //   State<RegisterPage> createState() => _RegisterPageState();
// // }

// // class _RegisterPageState extends State<RegisterPage> {
// //   final TextEditingController _nameController = TextEditingController();
// //   final TextEditingController _emailController = TextEditingController();
// //   final TextEditingController _passwordController = TextEditingController();
// //   final TextEditingController _confirmPasswordController = TextEditingController();

// //   bool _obscurePassword = true;
// //   bool _obscureConfirmPassword = true;
// //   bool _isPasswordValid = false;
// //   bool _isButtonActive = false;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _nameController.addListener(_validateForm);
// //     _emailController.addListener(_validateForm);
// //     _passwordController.addListener(_validateForm);
// //     _confirmPasswordController.addListener(_validateForm);
// //     _passwordController.addListener(_validatePassword);
// //   }

// //   void _validateForm() {
// //     setState(() {
// //       _isButtonActive = _nameController.text.isNotEmpty &&
// //           _emailController.text.isNotEmpty &&
// //           _passwordController.text.isNotEmpty &&
// //           _confirmPasswordController.text.isNotEmpty;
// //     });
// //   }

// //   void _validatePassword() {
// //     setState(() {
// //       _isPasswordValid = _passwordController.text.length >= 8;
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     _nameController.dispose();
// //     _emailController.dispose();
// //     _passwordController.dispose();
// //     _confirmPasswordController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: BlocListener<RegisterBloc, RegisterState>(
// //           listener: (context, state) {
// //             state.whenOrNull(
// //               loading: () => showDialog(
// //                 context: context,
// //                 barrierDismissible: false,
// //                 builder: (_) => const Center(child: CircularProgressIndicator()),
// //               ),
// //               success: () {
// //                 Navigator.pop(context); // close loading
// //                 ScaffoldMessenger.of(context).showSnackBar(
// //                   const SnackBar(content: Text("Pendaftaran berhasil")),
// //                 );
// //                 Navigator.pop(context); // return to login
// //               },
// //               error: (message) {
// //                 Navigator.pop(context); // close loading
// //                 ScaffoldMessenger.of(context).showSnackBar(
// //                   SnackBar(content: Text(message)),
// //                 );
// //               },
// //             );
// //           },
// //           child: SingleChildScrollView(
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Container(
// //                   width: double.infinity,
// //                   height: 150,
// //                   decoration: const BoxDecoration(
// //                     color: Colors.blue,
// //                     borderRadius: BorderRadius.only(
// //                       bottomRight: Radius.circular(390),
// //                     ),
// //                   ),
// //                   padding: const EdgeInsets.only(top: 60, left: 20),
// //                   alignment: Alignment.topLeft,
// //                   child: Image.asset(
// //                     'assets/Logoo.png',
// //                     width: 111,
// //                     height: 50,
// //                   ),
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       const Text(
// //                         'Daftar Akun',
// //                         style: TextStyle(
// //                           fontSize: 20,
// //                           fontWeight: FontWeight.bold,
// //                           color: Colors.black,
// //                         ),
// //                       ),
// //                       const SizedBox(height: 24),

// //                       const Text('Nama Lengkap', style: TextStyle(fontSize: 14, color: AppColor.gray)),
// //                       const SizedBox(height: 8),
// //                       TextField(
// //                         controller: _nameController,
// //                         decoration: InputDecoration(
// //                           border: OutlineInputBorder(
// //                             borderRadius: BorderRadius.circular(12),
// //                           ),
// //                           focusedBorder: OutlineInputBorder(
// //                             borderRadius: BorderRadius.circular(12),
// //                             borderSide: const BorderSide(color: Colors.blue, width: 2),
// //                           ),
// //                         ),
// //                       ),

// //                       const SizedBox(height: 20),

// //                       const Text('Alamat e-mail', style: TextStyle(fontSize: 14, color: AppColor.gray)),
// //                       const SizedBox(height: 8),
// //                       TextField(
// //                         controller: _emailController,
// //                         decoration: InputDecoration(
// //                           border: OutlineInputBorder(
// //                             borderRadius: BorderRadius.circular(12),
// //                           ),
// //                           focusedBorder: OutlineInputBorder(
// //                             borderRadius: BorderRadius.circular(12),
// //                             borderSide: const BorderSide(color: Colors.blue, width: 2),
// //                           ),
// //                         ),
// //                       ),

// //                       const SizedBox(height: 20),

// //                       const Text('Kata sandi', style: TextStyle(fontSize: 14, color: AppColor.gray)),
// //                       const SizedBox(height: 8),
// //                       TextField(
// //                         controller: _passwordController,
// //                         obscureText: _obscurePassword,
// //                         decoration: InputDecoration(
// //                           border: OutlineInputBorder(
// //                             borderRadius: BorderRadius.circular(12),
// //                           ),
// //                           focusedBorder: OutlineInputBorder(
// //                             borderRadius: BorderRadius.circular(12),
// //                             borderSide: const BorderSide(color: Colors.blue, width: 2),
// //                           ),
// //                           suffixIcon: IconButton(
// //                             icon: Image.asset(
// //                               _obscurePassword ? 'assets/hide.png' : 'assets/show.png',
// //                               width: 24,
// //                               height: 24,
// //                             ),
// //                             onPressed: () {
// //                               setState(() {
// //                                 _obscurePassword = !_obscurePassword;
// //                               });
// //                             },
// //                           ),
// //                         ),
// //                       ),

// //                       const SizedBox(height: 4),
// //                       Row(
// //                         children: [
// //                           SizedBox(
// //                             width: 24,
// //                             height: 24,
// //                             child: Checkbox(
// //                               value: _isPasswordValid,
// //                               onChanged: null,
// //                               activeColor: Colors.blue,
// //                             ),
// //                           ),
// //                           const SizedBox(width: 8),
// //                           const Text(
// //                             'Kata sandi harus berisi minimal 8 karakter',
// //                             style: TextStyle(fontSize: 12, color: AppColor.gray),
// //                           ),
// //                         ],
// //                       ),

// //                       const SizedBox(height: 20),

// //                       const Text('Konfirmasi kata sandi', style: TextStyle(fontSize: 14, color: AppColor.gray)),
// //                       const SizedBox(height: 8),
// //                       TextField(
// //                         controller: _confirmPasswordController,
// //                         obscureText: _obscureConfirmPassword,
// //                         decoration: InputDecoration(
// //                           border: OutlineInputBorder(
// //                             borderRadius: BorderRadius.circular(12),
// //                           ),
// //                           focusedBorder: OutlineInputBorder(
// //                             borderRadius: BorderRadius.circular(12),
// //                             borderSide: const BorderSide(color: Colors.blue, width: 2),
// //                           ),
// //                           suffixIcon: IconButton(
// //                             icon: Image.asset(
// //                               _obscureConfirmPassword ? 'assets/hide.png' : 'assets/show.png',
// //                               width: 24,
// //                               height: 24,
// //                             ),
// //                             onPressed: () {
// //                               setState(() {
// //                                 _obscureConfirmPassword = !_obscureConfirmPassword;
// //                               });
// //                             },
// //                           ),
// //                         ),
// //                       ),

// //                       const SizedBox(height: 40),

// //                       SizedBox(
// //                         width: double.infinity,
// //                         height: 50,
// //                         child: ElevatedButton(
// //                           onPressed: _isButtonActive
// //                               ? () {
// //                                   context.read<RegisterBloc>().add(
// //                                         RegisterEvent.submitted(
// //                                           name: _nameController.text,
// //                                           email: _emailController.text,
// //                                           password: _passwordController.text,
// //                                           confirmPassword: _confirmPasswordController.text,
// //                                         ),
// //                                       );
// //                                 }
// //                               : null,
// //                           style: ElevatedButton.styleFrom(
// //                             backgroundColor: _isButtonActive ? Colors.blue : Colors.grey,
// //                             shape: RoundedRectangleBorder(
// //                               borderRadius: BorderRadius.circular(12),
// //                             ),
// //                           ),
// //                           child: const Text(
// //                             'Daftar',
// //                             style: TextStyle(
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.white,
// //                             ),
// //                           ),
// //                         ),
// //                       ),

// //                       const SizedBox(height: 24),

// //                       Center(
// //                         child: RichText(
// //                           text: TextSpan(
// //                             text: 'Sudah punya akun? ',
// //                             style: const TextStyle(color: Colors.black),
// //                             children: [
// //                               TextSpan(
// //                                 text: 'Masuk',
// //                                 style: const TextStyle(
// //                                     color: Colors.blue,
// //                                     fontWeight: FontWeight.bold),
// //                                 recognizer: TapGestureRecognizer()
// //                                   ..onTap = () {
// //                                     Navigator.pop(context);
// //                                   },
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
// //                       const SizedBox(height: 32),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:final_project_pengaduan_masyarakat_sem2/constant/color.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/intro/login_page.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/auth/bloc/register/register_bloc.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmPasswordController = TextEditingController();

//   bool _obscurePassword = true;
//   bool _obscureConfirmPassword = true;
//   bool _isPasswordValid = false;
//   bool _isButtonActive = false;

//   @override
//   void initState() {
//     super.initState();
//     _nameController.addListener(_validateForm);
//     _emailController.addListener(_validateForm);
//     _passwordController.addListener(_validateForm);
//     _confirmPasswordController.addListener(_validateForm);
//     _passwordController.addListener(_validatePassword);
//   }

//   void _validateForm() {
//     setState(() {
//       _isButtonActive = _nameController.text.isNotEmpty &&
//           _emailController.text.isNotEmpty &&
//           _passwordController.text.isNotEmpty &&
//           _confirmPasswordController.text.isNotEmpty;
//     });
//   }

//   void _validatePassword() {
//     setState(() {
//       _isPasswordValid = _passwordController.text.length >= 8;
//     });
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: BlocListener<RegisterBloc, RegisterState>(
//           listener: (context, state) {
//             state.whenOrNull(
//               loading: () => showDialog(
//                 context: context,
//                 barrierDismissible: false,
//                 builder: (_) => const Center(child: CircularProgressIndicator()),
//               ),
//               success: () {
//                 Navigator.pop(context); // close loading
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text("Pendaftaran berhasil")),
//                 );
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (_) => const LoginPage()),
//                 );
//               },
//               error: (message) {
//                 Navigator.pop(context); // close loading
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text(message)),
//                 );
//               },
//             );
//           },
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: 150,
//                   decoration: const BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.only(
//                       bottomRight: Radius.circular(390),
//                     ),
//                   ),
//                   padding: const EdgeInsets.only(top: 60, left: 20),
//                   alignment: Alignment.topLeft,
//                   child: Image.asset(
//                     'assets/Logoo.png',
//                     width: 111,
//                     height: 50,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         'Daftar Akun',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       const SizedBox(height: 24),

//                       const Text('Nama Lengkap', style: TextStyle(fontSize: 14, color: AppColor.gray)),
//                       const SizedBox(height: 8),
//                       TextField(
//                         controller: _nameController,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: const BorderSide(color: Colors.blue, width: 2),
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 20),

//                       const Text('Alamat e-mail', style: TextStyle(fontSize: 14, color: AppColor.gray)),
//                       const SizedBox(height: 8),
//                       TextField(
//                         controller: _emailController,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: const BorderSide(color: Colors.blue, width: 2),
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 20),

//                       const Text('Kata sandi', style: TextStyle(fontSize: 14, color: AppColor.gray)),
//                       const SizedBox(height: 8),
//                       TextField(
//                         controller: _passwordController,
//                         obscureText: _obscurePassword,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: const BorderSide(color: Colors.blue, width: 2),
//                           ),
//                           suffixIcon: IconButton(
//                             icon: Image.asset(
//                               _obscurePassword ? 'assets/hide.png' : 'assets/show.png',
//                               width: 24,
//                               height: 24,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 _obscurePassword = !_obscurePassword;
//                               });
//                             },
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 4),
//                       Row(
//                         children: [
//                           SizedBox(
//                             width: 24,
//                             height: 24,
//                             child: Checkbox(
//                               value: _isPasswordValid,
//                               onChanged: null,
//                               activeColor: Colors.blue,
//                             ),
//                           ),
//                           const SizedBox(width: 8),
//                           const Text(
//                             'Kata sandi harus berisi minimal 8 karakter',
//                             style: TextStyle(fontSize: 12, color: AppColor.gray),
//                           ),
//                         ],
//                       ),

//                       const SizedBox(height: 20),

//                       const Text('Konfirmasi kata sandi', style: TextStyle(fontSize: 14, color: AppColor.gray)),
//                       const SizedBox(height: 8),
//                       TextField(
//                         controller: _confirmPasswordController,
//                         obscureText: _obscureConfirmPassword,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: const BorderSide(color: Colors.blue, width: 2),
//                           ),
//                           suffixIcon: IconButton(
//                             icon: Image.asset(
//                               _obscureConfirmPassword ? 'assets/hide.png' : 'assets/show.png',
//                               width: 24,
//                               height: 24,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 _obscureConfirmPassword = !_obscureConfirmPassword;
//                               });
//                             },
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 40),

//                       SizedBox(
//                         width: double.infinity,
//                         height: 50,
//                         child: ElevatedButton(
//                           onPressed: _isButtonActive
//                               ? () {
//                                   context.read<RegisterBloc>().add(
//                                         RegisterEvent.submitted(
//                                           name: _nameController.text,
//                                           email: _emailController.text,
//                                           password: _passwordController.text,
//                                           confirmPassword: _confirmPasswordController.text,
//                                         ),
//                                       );
//                                 }
//                               : null,
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: _isButtonActive ? Colors.blue : Colors.grey,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                           ),
//                           child: const Text(
//                             'Daftar',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 24),

//                       Center(
//                         child: RichText(
//                           text: TextSpan(
//                             text: 'Sudah punya akun? ',
//                             style: const TextStyle(color: Colors.black),
//                             children: [
//                               TextSpan(
//                                 text: 'Masuk',
//                                 style: const TextStyle(
//                                     color: Colors.blue,
//                                     fontWeight: FontWeight.bold),
//                                 recognizer: TapGestureRecognizer()
//                                   ..onTap = () {
//                                     Navigator.pop(context);
//                                   },
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 32),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:final_project_pengaduan_masyarakat_sem2/constant/color.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/intro/login_page.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/auth/bloc/register/register_bloc.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmPasswordController = TextEditingController();

//   bool _obscurePassword = true;
//   bool _obscureConfirmPassword = true;
//   bool _isPasswordValid = false;
//   bool _isButtonActive = false;

//   @override
//   void initState() {
//     super.initState();
//     _nameController.addListener(_validateForm);
//     _emailController.addListener(_validateForm);
//     _passwordController.addListener(_validateForm);
//     _confirmPasswordController.addListener(_validateForm);
//     _passwordController.addListener(_validatePassword);
//   }

//   void _validateForm() {
//     setState(() {
//       _isButtonActive = _nameController.text.isNotEmpty &&
//           _emailController.text.isNotEmpty &&
//           _passwordController.text.isNotEmpty &&
//           _confirmPasswordController.text.isNotEmpty;
//     });
//   }

//   void _validatePassword() {
//     setState(() {
//       _isPasswordValid = _passwordController.text.length >= 8;
//     });
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: BlocListener<RegisterBloc, RegisterState>(
//           listener: (context, state) {
//             state.whenOrNull(
//               loading: () => showDialog(
//                 context: context,
//                 barrierDismissible: false,
//                 builder: (_) => const Center(child: CircularProgressIndicator()),
//               ),
//               success: () {
//                 Navigator.pop(context); // close loading
//                 WidgetsBinding.instance.addPostFrameCallback((_) {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(builder: (_) => const LoginPage()),
//                   );
//                 });
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text("Pendaftaran berhasil")),
//                 );
//               },
//               error: (message) {
//                 Navigator.pop(context); // close loading
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text(message)),
//                 );
//               },
//             );
//           },
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: 150,
//                   decoration: const BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.only(
//                       bottomRight: Radius.circular(390),
//                     ),
//                   ),
//                   padding: const EdgeInsets.only(top: 60, left: 20),
//                   alignment: Alignment.topLeft,
//                   child: Image.asset(
//                     'assets/Logoo.png',
//                     width: 111,
//                     height: 50,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         'Daftar Akun',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       const SizedBox(height: 24),

//                       const Text('Nama Lengkap', style: TextStyle(fontSize: 14, color: AppColor.gray)),
//                       const SizedBox(height: 8),
//                       TextField(
//                         controller: _nameController,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: const BorderSide(color: Colors.blue, width: 2),
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 20),

//                       const Text('Alamat e-mail', style: TextStyle(fontSize: 14, color: AppColor.gray)),
//                       const SizedBox(height: 8),
//                       TextField(
//                         controller: _emailController,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: const BorderSide(color: Colors.blue, width: 2),
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 20),

//                       const Text('Kata sandi', style: TextStyle(fontSize: 14, color: AppColor.gray)),
//                       const SizedBox(height: 8),
//                       TextField(
//                         controller: _passwordController,
//                         obscureText: _obscurePassword,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: const BorderSide(color: Colors.blue, width: 2),
//                           ),
//                           suffixIcon: IconButton(
//                             icon: Image.asset(
//                               _obscurePassword ? 'assets/hide.png' : 'assets/show.png',
//                               width: 24,
//                               height: 24,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 _obscurePassword = !_obscurePassword;
//                               });
//                             },
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 4),
//                       Row(
//                         children: [
//                           SizedBox(
//                             width: 24,
//                             height: 24,
//                             child: Checkbox(
//                               value: _isPasswordValid,
//                               onChanged: null,
//                               activeColor: Colors.blue,
//                             ),
//                           ),
//                           const SizedBox(width: 8),
//                           const Text(
//                             'Kata sandi harus berisi minimal 8 karakter',
//                             style: TextStyle(fontSize: 12, color: AppColor.gray),
//                           ),
//                         ],
//                       ),

//                       const SizedBox(height: 20),

//                       const Text('Konfirmasi kata sandi', style: TextStyle(fontSize: 14, color: AppColor.gray)),
//                       const SizedBox(height: 8),
//                       TextField(
//                         controller: _confirmPasswordController,
//                         obscureText: _obscureConfirmPassword,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: const BorderSide(color: Colors.blue, width: 2),
//                           ),
//                           suffixIcon: IconButton(
//                             icon: Image.asset(
//                               _obscureConfirmPassword ? 'assets/hide.png' : 'assets/show.png',
//                               width: 24,
//                               height: 24,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 _obscureConfirmPassword = !_obscureConfirmPassword;
//                               });
//                             },
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 40),

//                       SizedBox(
//                         width: double.infinity,
//                         height: 50,
//                         child: ElevatedButton(
//                           onPressed: _isButtonActive
//                               ? () {
//                                   context.read<RegisterBloc>().add(
//                                         RegisterEvent.submitted(
//                                           name: _nameController.text,
//                                           email: _emailController.text,
//                                           password: _passwordController.text,
//                                           confirmPassword: _confirmPasswordController.text,
//                                         ),
//                                       );
//                                 }
//                               : null,
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: _isButtonActive ? Colors.blue : Colors.grey,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                           ),
//                           child: const Text(
//                             'Daftar',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 24),

//                       Center(
//                         child: RichText(
//                           text: TextSpan(
//                             text: 'Sudah punya akun? ',
//                             style: const TextStyle(color: Colors.black),
//                             children: [
//                               TextSpan(
//                                 text: 'Masuk',
//                                 style: const TextStyle(
//                                     color: Colors.blue,
//                                     fontWeight: FontWeight.bold),
//                                 recognizer: TapGestureRecognizer()
//                                   ..onTap = () {
//                                     Navigator.pop(context);
//                                   },
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 32),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:final_project_pengaduan_masyarakat_sem2/constant/color.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/intro/login_page.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:final_project_pengaduan_masyarakat_sem2/auth/bloc/register/register_bloc.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmPasswordController = TextEditingController();

//   bool _obscurePassword = true;
//   bool _obscureConfirmPassword = true;
//   bool _isPasswordValid = false;
//   bool _isButtonActive = false;

//   @override
//   void initState() {
//     super.initState();
//     _nameController.addListener(_validateForm);
//     _emailController.addListener(_validateForm);
//     _passwordController.addListener(_validateForm);
//     _confirmPasswordController.addListener(_validateForm);
//     _passwordController.addListener(_validatePassword);
//   }

//   void _validateForm() {
//     setState(() {
//       _isButtonActive = _nameController.text.isNotEmpty &&
//           _emailController.text.isNotEmpty &&
//           _passwordController.text.isNotEmpty &&
//           _confirmPasswordController.text.isNotEmpty;
//     });
//   }

//   void _validatePassword() {
//     setState(() {
//       _isPasswordValid = _passwordController.text.length >= 8;
//     });
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: BlocListener<RegisterBloc, RegisterState>(
//           listener: (context, state) {
//             state.whenOrNull(
//               loading: () => showDialog(
//                 context: context,
//                 barrierDismissible: false,
//                 builder: (_) => const Center(child: CircularProgressIndicator()),
//               ),
//               success: () {
//                 Navigator.pop(context); // close loading
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text("Pendaftaran berhasil")),
//                 );
//                 Future.delayed(const Duration(seconds: 1), () {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(builder: (_) => const LoginPage()),
//                   );
//                 });
//               },
//               error: (message) {
//                 Navigator.pop(context); // close loading
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text(message)),
//                 );
//               },
//             );
//           },
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: 150,
//                   decoration: const BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.only(
//                       bottomRight: Radius.circular(390),
//                     ),
//                   ),
//                   padding: const EdgeInsets.only(top: 60, left: 20),
//                   alignment: Alignment.topLeft,
//                   child: Image.asset(
//                     'assets/Logoo.png',
//                     width: 111,
//                     height: 50,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         'Daftar Akun',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       const SizedBox(height: 24),
//                       const Text('Nama Lengkap', style: TextStyle(fontSize: 14, color: AppColor.gray)),
//                       const SizedBox(height: 8),
//                       TextField(
//                         controller: _nameController,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: const BorderSide(color: Colors.blue, width: 2),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       const Text('Alamat e-mail', style: TextStyle(fontSize: 14, color: AppColor.gray)),
//                       const SizedBox(height: 8),
//                       TextField(
//                         controller: _emailController,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: const BorderSide(color: Colors.blue, width: 2),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       const Text('Kata sandi', style: TextStyle(fontSize: 14, color: AppColor.gray)),
//                       const SizedBox(height: 8),
//                       TextField(
//                         controller: _passwordController,
//                         obscureText: _obscurePassword,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: const BorderSide(color: Colors.blue, width: 2),
//                           ),
//                           suffixIcon: IconButton(
//                             icon: Image.asset(
//                               _obscurePassword ? 'assets/hide.png' : 'assets/show.png',
//                               width: 24,
//                               height: 24,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 _obscurePassword = !_obscurePassword;
//                               });
//                             },
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 4),
//                       Row(
//                         children: [
//                           SizedBox(
//                             width: 24,
//                             height: 24,
//                             child: Checkbox(
//                               value: _isPasswordValid,
//                               onChanged: null,
//                               activeColor: Colors.blue,
//                             ),
//                           ),
//                           const SizedBox(width: 8),
//                           const Text(
//                             'Kata sandi harus berisi minimal 8 karakter',
//                             style: TextStyle(fontSize: 12, color: AppColor.gray),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 20),
//                       const Text('Konfirmasi kata sandi', style: TextStyle(fontSize: 14, color: AppColor.gray)),
//                       const SizedBox(height: 8),
//                       TextField(
//                         controller: _confirmPasswordController,
//                         obscureText: _obscureConfirmPassword,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: const BorderSide(color: Colors.blue, width: 2),
//                           ),
//                           suffixIcon: IconButton(
//                             icon: Image.asset(
//                               _obscureConfirmPassword ? 'assets/hide.png' : 'assets/show.png',
//                               width: 24,
//                               height: 24,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 _obscureConfirmPassword = !_obscureConfirmPassword;
//                               });
//                             },
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 40),
//                       SizedBox(
//                         width: double.infinity,
//                         height: 50,
//                         child: ElevatedButton(
//                           onPressed: _isButtonActive
//                               ? () {
//                                   context.read<RegisterBloc>().add(
//                                         RegisterEvent.submitted(
//                                           name: _nameController.text,
//                                           email: _emailController.text,
//                                           password: _passwordController.text,
//                                           confirmPassword: _confirmPasswordController.text,
//                                         ),
//                                       );
//                                 }
//                               : null,
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: _isButtonActive ? Colors.blue : Colors.grey,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                           ),
//                           child: const Text(
//                             'Daftar',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 24),
//                       Center(
//                         child: RichText(
//                           text: TextSpan(
//                             text: 'Sudah punya akun? ',
//                             style: const TextStyle(color: Colors.black),
//                             children: [
//                               TextSpan(
//                                 text: 'Masuk',
//                                 style: const TextStyle(
//                                     color: Colors.blue,
//                                     fontWeight: FontWeight.bold),
//                                 recognizer: TapGestureRecognizer()
//                                   ..onTap = () {
//                                     Navigator.pop(context);
//                                   },
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 32),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:final_project_pengaduan_masyarakat_sem2/constant/color.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/intro/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/auth/bloc/register/register_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _isPasswordValid = false;
  bool _isButtonActive = false;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_validateForm);
    _emailController.addListener(_validateForm);
    _passwordController.addListener(_validateForm);
    _confirmPasswordController.addListener(_validateForm);
    _passwordController.addListener(_validatePassword);
  }

  void _validateForm() {
    setState(() {
      _isButtonActive = _nameController.text.isNotEmpty &&
          _emailController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty &&
          _confirmPasswordController.text.isNotEmpty;
    });
  }

  void _validatePassword() {
    setState(() {
      _isPasswordValid = _passwordController.text.length >= 8;
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<RegisterBloc, RegisterState>(
          listener: (context, state) {
            state.whenOrNull(
              loading: () => showDialog(
                context: context,
                barrierDismissible: false,
                builder: (_) => const Center(child: CircularProgressIndicator()),
              ),
              success: () {
                Navigator.pop(context); // close loading
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Pendaftaran berhasil")),
                );
                Future.delayed(const Duration(seconds: 1), () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginPage()),
                  );
                });
              },
              error: (message) {
                Navigator.pop(context); // close loading
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message)),
                );
              },
            );
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(390),
                    ),
                  ),
                  padding: const EdgeInsets.only(top: 60, left: 20),
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/Logoo.png',
                    width: 111,
                    height: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Daftar Akun',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text('Nama Lengkap', style: TextStyle(fontSize: 14, color: AppColor.gray)),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue, width: 2),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text('Alamat e-mail', style: TextStyle(fontSize: 14, color: AppColor.gray)),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue, width: 2),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text('Kata sandi', style: TextStyle(fontSize: 14, color: AppColor.gray)),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _passwordController,
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue, width: 2),
                          ),
                          suffixIcon: IconButton(
                            icon: Image.asset(
                              _obscurePassword ? 'assets/hide.png' : 'assets/show.png',
                              width: 24,
                              height: 24,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Checkbox(
                              value: _isPasswordValid,
                              onChanged: null,
                              activeColor: Colors.blue,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Kata sandi harus berisi minimal 8 karakter',
                            style: TextStyle(fontSize: 12, color: AppColor.gray),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text('Konfirmasi kata sandi', style: TextStyle(fontSize: 14, color: AppColor.gray)),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _confirmPasswordController,
                        obscureText: _obscureConfirmPassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue, width: 2),
                          ),
                          suffixIcon: IconButton(
                            icon: Image.asset(
                              _obscureConfirmPassword ? 'assets/hide.png' : 'assets/show.png',
                              width: 24,
                              height: 24,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureConfirmPassword = !_obscureConfirmPassword;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: _isButtonActive
                              ? () {
                                  context.read<RegisterBloc>().add(
                                        RegisterEvent.submitted(
                                          name: _nameController.text,
                                          email: _emailController.text,
                                          password: _passwordController.text,
                                          confirmPassword: _confirmPasswordController.text,
                                        ),
                                      );
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _isButtonActive ? Colors.blue : Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            'Daftar',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'Sudah punya akun? ',
                            style: const TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'Masuk',
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pop(context);
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
