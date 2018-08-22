//安装成功后，必须引入gulp和gulp-sass
let gulp = require('gulp');

//gulp的使用都是通过任务形式执行某些功能
let sass = require('gulp-sass');

//1创建任务
gulp.task('compileSass',function(){
    //执行任务时，执行这里的代码
    //sass -> css
    //找出sass文件
    gulp.src(['./src/sass/*.scss'])//返回一个文件流

//     //编译
    .pipe(sass({outputStyle:'compact'}).on('error',sass.logError)) //得到文件流
//     //输出到硬盘
    .pipe(gulp.dest('./src/css/'))
})

//自动化编译
gulp.task('autoSass',function(){
    //监听文件修改，如果有修改，则执行
    gulp.watch('./src/sass/*.scss',['compileSass']);
})