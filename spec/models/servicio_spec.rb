require 'rails_helper'

RSpec.describe Servicio, type: :model do
  # lineas 5-8: un test
  it 'creates correctly' do
    servicio = described_class.new(sid: 1, uid: 1, nombre: 'Salchipapas', descripcion: 'Las mas ricas', categoria: 'Comida')
    expect(servicio).to be_valid
  end

  context 'When invalid inputs are given to create a servicio' do
    it "does not create bc it hasn't sid" do
      servicio = described_class.new(uid: 2, nombre: 'Completos', descripcion: 'Los mas ricos', categoria: 'Comida')
      expect(servicio).not_to be_valid
    end

    it "does not create bc it hasn't user id" do
      servicio = described_class.new(sid: 3, nombre: 'Servicio 3', descripcion: 'Bueno 3', categoria: 'Comida')
      expect(servicio).not_to be_valid
    end

    it "does not create bc it hasn't name" do
      servicio = described_class.new(sid: 4, uid: 4, descripcion: 'Bueno 4', categoria: 'Comida')
      expect(servicio).not_to be_valid
    end

    it "does not create bc it hasn't description" do
      servicio = described_class.new(sid: 5, uid: 5, nombre: 'Servicio 5', categoria: 'Comida')
      expect(servicio).not_to be_valid
    end

    it "does not create bc it hasn't category" do
      servicio = described_class.new(sid: 6, uid: 6, nombre: 'Servicio 6', descripcion: 'Bueno 6')
      expect(servicio).not_to be_valid
    end

    it 'does not create bc service id is off limit' do
      servicio = described_class.new(sid: 700, uid: 1, nombre: 'Servicio 7', descripcion: 'Bueno 7', categoria: 'Comida')
      expect(servicio).not_to be_valid
    end
  end
  # puedo hacer un test para evaluar si no tiene cada uno de los parametros necesarios
end
