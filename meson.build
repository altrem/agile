project('com.github.altrem.agile', 'vala', 'c')

executable(
    meson.project_name(),
    'src/Application.vala',
    'src/Core/Board.vala',
    'src/Core/Column.vala',
    'src/Utils/CollectionUtils.vala',
    dependencies: [
        dependency('gtk+-3.0'),
        dependency('gee-0.8')
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