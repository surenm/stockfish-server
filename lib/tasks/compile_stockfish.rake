task compile_stockfish: :environment do
  stockfish_dir = Rails.root.join "lib", "Stockfish", "src"
  system "cd #{stockfish_dir} && make build ARCH=x86-64"
end

task "assets:precompile" => "compile_stockfish"