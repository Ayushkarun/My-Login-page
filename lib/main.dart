import 'package:flutter/material.dart';
import './login/loginp.dart';

void main() {
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}


/*
* What went wrong:
Execution failed for task ':path_provider_android:compileDebugJavaWithJavac'.
> Could not resolve all files for configuration ':path_provider_android:androidJdkImage'.
   > Failed to transform core-for-system-modules.jar to match attributes {artifactType=_internal_android_jdk_image, org.gradle.libraryelements=jar, 
   org.gradle.usage=java-runtime}.
      > Execution failed for JdkImageTransform: C:\Users\HP\AppData\Local\Android\sdk\platforms\android-34\core-for-system-modules.jar.
         > Error while executing process C:\Program Files\Android\Android Studio\jbr\bin\jlink.exe with arguments
          {--module-path C:\Users\HP\.gradle\caches\transforms-3\8254df3c5c93aab8b63b7456581939e9\transformed\output\temp\jmod
           --add-modules java.base --output C:\Users\HP\.gradle\caches\transforms-3\8254df3c5c93aab8b63b7456581939e9\transformed\output\jdkImage 
           --disable-plugin system-modules}
           */