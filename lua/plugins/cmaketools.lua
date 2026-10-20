return {
  'Civitasv/cmake-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  ft = { 'c', 'cpp', 'cmake' },
  opts = {
    cmake_build_directory = 'build/${variant:buildType}',
    cmake_soft_link_compile_commands = true,
    cmake_regenerate_on_save = true,
  },
  keys = {
    { '<leader>cg', '<cmd>CMakeGenerate<cr>', desc = 'CMake generate' },
    { '<leader>cb', '<cmd>CMakeBuild<cr>', desc = 'CMake build' },
    { '<leader>cr', '<cmd>CMakeRun<cr>', desc = 'CMake run' },
    { '<leader>ct', '<cmd>CMakeSelectBuildTarget<cr>', desc = 'CMake select target' },
    { '<leader>cv', '<cmd>CMakeSelectBuildType<cr>', desc = 'CMake select build type' },
    { '<leader>cx', '<cmd>CMakeClean<cr>', desc = 'CMake clean' },
  },
}
