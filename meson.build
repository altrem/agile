project('com.github.altrem.agile', 'vala', 'c')

executable(
    meson.project_name(),
    'src/Application.vala',
    'src/Core/Board.vala',
    'src/Core/Column.vala',
    'src/Utils/CollectionUtils.vala',
    'src/Widgets/MainWindow.vala',
    'src/Widgets/HeaderBar.vala',
    'src/Widgets/WelcomeView.vala',
    'src/Services/BoardService.vala',
    dependencies: [
        dependency('gtk+-3.0'),
        dependency('gee-0.8'),
        dependency('granite')
    ],
    install: true
)

install_data(
    join_paths('data', meson.project_name() + '.desktop'),
    install_dir: join_paths(get_option('datadir'), 'applications')
)

install_data(
    join_paths('data', meson.project_name() + '.appdata.xml'),
    install_dir: join_paths(get_option('datadir'), 'metainfo')
)