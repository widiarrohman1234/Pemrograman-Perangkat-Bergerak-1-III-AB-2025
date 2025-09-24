import 'package:first_flutter_app/modules/app_bar/app_bar_basic.dart'
    show AppBarBasic;
import 'package:first_flutter_app/modules/app_bar/app_bar_color_theme.dart'
    show AppBarColorTheme;
import 'package:first_flutter_app/modules/app_bar/app_bar_flexible_space.dart'
    show AppBarFlexibleSpace;
import 'package:first_flutter_app/modules/app_bar/app_bar_leading_navigation.dart'
    show AppBarLeadingNavigation;
import 'package:first_flutter_app/modules/container/container_nested.dart'
    show ContainerNested;
import 'package:first_flutter_app/modules/container/container_padding_margin.dart'
    show ContainerPaddingMargin;
import 'package:first_flutter_app/modules/container/container_profile_mahasiswa.dart'
    show MahasiswaCard;
import 'package:first_flutter_app/modules/row_column/column_alternatif.dart' show ColumnAlternatif;
import 'package:first_flutter_app/modules/row_column/column_main_cross.dart' show ColumnMainCross;
import 'package:first_flutter_app/modules/row_column/row_basic.dart';
import 'package:first_flutter_app/modules/row_column/row_column_space_evenly.dart' show RowColumnSpaceEvenly;
import 'package:first_flutter_app/modules/row_column/row_nesting.dart' show RowNesting;
import 'package:first_flutter_app/modules/scaffold/scaffold_drawer.dart'
    show ScaffoldDrawer;
import 'package:first_flutter_app/modules/scaffold/scaffold_floating_action_button.dart'
    show ScaffoldFloatingActionButton;
import 'package:first_flutter_app/modules/scaffold/scaffold_module.dart'
    show ScaffoldModule;
import 'package:first_flutter_app/modules/scaffold/scaffold_nested.dart'
    show ScaffoldNested;
import 'package:first_flutter_app/modules/scaffold/scaffold_save_area.dart'
    show ScaffoldSaveArea;
import 'package:first_flutter_app/modules/text/text_gesture_detector.dart'
    show TextGestureDetector;
import 'package:first_flutter_app/modules/text/text_overflow.dart'
    show TextOverflowClass;
import 'package:first_flutter_app/modules/text/text_rich.dart' show TextRich;
import 'package:first_flutter_app/modules/text/text_selection_area.dart'
    show TextSelectionArea;
import 'package:first_flutter_app/modules/text/text_span_module.dart'
    show TextSpanModule;
import 'package:first_flutter_app/modules/text/text_task.dart';
import 'package:flutter/material.dart';
import 'modules/container/container_all_module.dart' show ContainerAllModule;
import 'modules/container/container_border_shadow.dart'
    show ContainerBorderShadow;
import 'modules/container/container_gradient.dart' show ContainerGradient;
import 'modules/container/container_module.dart' show ContainerModule;
import 'modules/container/container_task.dart' show ContainerTask;
import 'modules/container/container_transform.dart' show ContainerTransform;
import 'modules/example_clean_code.dart' show ExampleCleanCode;
import 'modules/hello_world_module.dart' show HelloWorldFlutter;
import 'modules/text/text_maxlines_softwrap.dart' show TextMaxlinesSoftwrap;
import 'modules/app_bar/app_bar_property.dart' show AppBarProperty;
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

/// Widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Developer")),
        body: RowColumnSpaceEvenly(),
      ),
      // home: AppBarProperty(),
      debugShowCheckedModeBanner: false,
    );
  }
}
