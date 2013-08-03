#serial 1

dnl From Jim Meyering.
dnl Provide lchown on systems that lack it.

AC_DEFUN(jm_FUNC_LCHOWN,
[
  AC_REQUIRE([AC_TYPE_UID_T])

  dnl if lchown() does not exist replace it by chown()
  dnl otherwise test whether lchown need to be replaced

  AC_CHECK_FUNC([lchown],
   AC_REPLACE_FUNCS(lchown),
   [AC_DEFINE([lchown], [chown], 
    [Define to 'chown' if you do no have the 'lchown' function.])
  ])
])
