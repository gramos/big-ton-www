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
    songs = %w(medios-de-comunicacion ahora-tengo-el-flow letme-back
               al-fin-es-viernes sigue-al-rastaman paren-de-fumigar
               resistencia-contra-babilon solo-en-la-ciudad no-llego-a-fin-de-mes)
    render 'index', {:songs => songs}
  end
end
