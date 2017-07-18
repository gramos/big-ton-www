require 'cuba'
require 'mote'
require 'mote/render'

Cuba.plugin Mote::Render

Cuba.use Rack::Static,
         urls: %w[/js /css /img],
         root: File.expand_path("./public", __dir__)

# ----------------------------------------------------------------
# Main app.
#
Cuba.define do

  on root do
    songs = %w(intro_sin-bajo no-tengo-verguenza mr-chief_sin-bajo resistencia-contra-babilon_sin-bajo medios-de-comunicacion_sin-bajo
               ill-not-wait al-fin-es-viernes_sin-bajo no-soy-un-rudeboy sigue-al-rastaman_sin-bajo ahora-tengo-el-flow_sin-bajo)

    render 'bass/index', {:songs => songs}
  end
end
