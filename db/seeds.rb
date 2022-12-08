Message.destroy_all
Chatroom.destroy_all
Issue.destroy_all
App.destroy_all
Category.destroy_all
User.destroy_all

## Category Seed
banco = Category.create!(name: 'Banco', icon: '<i class="fa-sharp fa-solid fa-building-columns"></i>')
rs = Category.create!(name: 'Rede Social', icon: '<i class="fa-sharp fa-solid fa-thumbs-up"></i>')
tv = Category.create!(name: 'Televisão', icon: '<i class="fa-solid fa-tv"></i>')
cel = Category.create!(name: 'Celular', icon: '<i class="fa-solid fa-mobile-retro"></i>')
wpp = Category.create!(name: 'Whatsapp', icon: '<i class="fa-brands fa-whatsapp"></i>')
ot = Category.create!(name: 'Outros', icon: '<i class="fa-solid fa-arrows-left-right"></i>')

## Apps
App.create!(name: 'Itaú', category: banco)
App.create!(name: 'Bradesco', category: banco)
App.create!(name: 'Inter', category: banco)
App.create!(name: 'Nubank', category: banco)
App.create!(name: 'Santander', category: banco)
App.create!(name: 'Outros', category: banco)

App.create!(name: 'FaceBook', category: rs)
App.create!(name: 'Twitter', category: rs)
App.create!(name: 'Koo', category: rs)
App.create!(name: 'TikTok', category: rs)
App.create!(name: 'Pinterest', category: rs)
App.create!(name: 'Outros', category: rs)

App.create!(name: 'Net', category: tv)
App.create!(name: 'Claro', category: tv)
App.create!(name: 'Netflix', category: tv)
App.create!(name: 'Disney +', category: tv)
App.create!(name: 'Paramount', category: tv)
App.create!(name: 'Outros', category: tv)

App.create!(name: 'Fotos', category: cel)
App.create!(name: 'Videos', category: cel)
App.create!(name: 'Documentos', category: cel)
App.create!(name: 'Configurações', category: cel)
App.create!(name: 'Outros', category: cel)

App.create!(name: 'Transferir', category: wpp)
App.create!(name: 'Fotos', category: wpp)
App.create!(name: 'Vídeos', category: wpp)
App.create!(name: 'Configurações', category: wpp)
App.create!(name: 'Outros', category: wpp)

App.create!(name: 'Abrir chamado', category: ot)

## Issues
Issue.create!(name: 'Pagar boleto', category: banco)
Issue.create!(name: 'Entrar', category: banco)
Issue.create!(name: 'Pagar fatura', category: banco)
Issue.create!(name: 'Transferir', category: banco)
Issue.create!(name: 'Pix', category: banco)
Issue.create!(name: 'Outros', category: banco)

Issue.create!(name: 'Postar Fotos', category: rs)
Issue.create!(name: 'Postar Videos', category: rs)
Issue.create!(name: 'Entrar', category: rs)
Issue.create!(name: 'Registrar', category: rs)
Issue.create!(name: 'Apagar conteúdo', category: rs)
Issue.create!(name: 'Outros', category: rs)

Issue.create!(name: 'Travou a net', category: tv)
Issue.create!(name: 'Travou a Netflix', category: rs)
Issue.create!(name: 'Travou a Disney +', category: rs)
Issue.create!(name: 'Meu neto trocou o canal', category: rs)
Issue.create!(name: 'Não liga', category: rs)
Issue.create!(name: 'Outros', category: rs)

Issue.create!(name: 'Apagar conteúdo', category: cel)
Issue.create!(name: 'Travou', category: cel)
Issue.create!(name: 'Configurar', category: cel)
Issue.create!(name: 'Acessar fotos/vídeos', category: cel)
Issue.create!(name: 'Não liga', category: cel)
Issue.create!(name: 'Outros', category: cel)

Issue.create!(name: 'Apagar mensagem', category: wpp)
Issue.create!(name: 'Travou', category: wpp)
Issue.create!(name: 'Configurar', category: wpp)
Issue.create!(name: 'Compartilhar fotos/vídeos', category: wpp)
Issue.create!(name: 'Outros', category: wpp)

Issue.create!(name: 'Abrir chamado', category: ot)
