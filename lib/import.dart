//depedencies
export 'package:flutter/material.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:bloc/bloc.dart';
export 'dart:convert';

//service
export 'package:task_intern_2_flutter/features/post/application/post_services.dart';
export 'package:task_intern_2_flutter/features/user/application/user_services.dart';
export 'package:task_intern_2_flutter/features/album/application/album_services.dart';
export 'package:task_intern_2_flutter/features/comment/application/comment_services.dart';

//data
export 'package:task_intern_2_flutter/features/user/data/user_repositories.dart';

//model
export 'package:task_intern_2_flutter/features/post/domain/post.dart';
export 'package:task_intern_2_flutter/features/comment/domain/comment.dart';
export 'package:task_intern_2_flutter/features/album/domain/album.dart';
export 'package:task_intern_2_flutter/features/user/domain/user.dart';

//view
export 'package:task_intern_2_flutter/features/album/presentation/view/album_page.dart';
export 'package:task_intern_2_flutter/features/comment/presentation/view/comment_page.dart';
export 'package:task_intern_2_flutter/features/post/presentation/view/post_page.dart';
export 'package:task_intern_2_flutter/features/user/presentation/view/user_page.dart';
export 'package:task_intern_2_flutter/features/comment/presentation/view/comment_detail_page.dart';
export 'package:task_intern_2_flutter/features/user/presentation/view/user_detail_page.dart';
export 'package:task_intern_2_flutter/features/home/view/error_page.dart';
export 'package:task_intern_2_flutter/features/home/view/home_page.dart';

//view model
export 'package:task_intern_2_flutter/features/user/presentation/viewmodel/user_bloc.dart';
export 'package:task_intern_2_flutter/features/post/presentation/viewmodel/post_bloc.dart';
export 'package:task_intern_2_flutter/features/comment/presentation/comment_viewmodel/comment_bloc.dart';
export 'package:task_intern_2_flutter/features/album/presentation/viewmodel/album_bloc.dart';
export 'package:task_intern_2_flutter/features/home/viewodel/home_bloc.dart';

//utils
export 'package:task_intern_2_flutter/routing/routes.dart';
export 'package:task_intern_2_flutter/routing/name_routes.dart';

//widget
export 'package:task_intern_2_flutter/features/user/presentation/widget/user_list.dart';
export 'package:task_intern_2_flutter/features/post/presentation/widget/post_list.dart';
export 'package:task_intern_2_flutter/features/comment/presentation/widget/comment_list.dart';
export 'package:task_intern_2_flutter/features/album/presentation/widget/album_list.dart';