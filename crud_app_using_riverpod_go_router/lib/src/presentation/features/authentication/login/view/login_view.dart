part of '../widgets/login_form.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final shouldRemember = ValueNotifier<bool>(false);

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    final notifier = ref.read(loginProvider.notifier);
    notifier.checkRememberMe();

    shouldRemember.addListener(() {
      notifier.updateRememberMe(shouldRemember.value);
    });

    ref.listenManual(loginProvider, (previous, next) {
      if (next.isSuccess) {
        notifier.saveRememberMe(shouldRemember.value);
        context.pushReplacementNamed(Routes.home);
      } else {
        shouldRemember.value = next.rememberMe;
      }

      if (next.isError) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(next.error!)));
      }
    });
  }

  void _onLogin() {
    if (_formKey.currentState!.validate()) {
      final email = emailController.text.trim();
      final password = passwordController.text;

      print('Logging in with:');
      print('Email: $email');
      print('Password: $password');

      ref
          .read(loginProvider.notifier)
          .login(
            email: email,
            password: password,
            shouldRemember: shouldRemember.value,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginProvider);

    return Scaffold(
      backgroundColor: const Color(0xffdfdfdf),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 370,
            width: 343,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFf9f9f6),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Enter your details below",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 10),
                    _LoginForm(
                      emailController: emailController,
                      passwordController: passwordController,
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff5b9d48),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    FilledButton(
                      onPressed: loginState.isLoading ? null : _onLogin,
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(311, 44),
                        backgroundColor: const Color(0xff5b9d48),
                        foregroundColor: Colors.white,
                      ),
                      child: (loginState.isLoading)
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                          : Text('Login', style: context.textStyle.labelLarge),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
