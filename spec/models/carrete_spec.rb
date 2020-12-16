require 'rails_helper'

RSpec.describe Carrete, type: :model do
  # lineas 5-8: un test
  it 'creates correctly' do
    carrete = described_class.new(nombre: 'Carrete 1', direccion: 'Avenida 1', cid: 1, uid: 1, max_asistentes: 100)
    expect(carrete).to be_valid
  end

  context 'When invalid inputs are given to create a carrete' do
    it "does not create bc it hasn't name" do
      carrete = described_class.new(direccion: 'Avenida 2', cid: 2, uid: 2, max_asistentes: 20)
      expect(carrete).not_to be_valid
    end

    it "does not create bc it hasn't direction" do
      carrete = described_class.new(nombre: 'Carrete 3', cid: 3, uid: 3, max_asistentes: 30)
      expect(carrete).not_to be_valid
    end

    it "does not create bc it hasn't city id" do
      carrete = described_class.new(nombre: 'Carrete 4', direccion: 'Avenida 4', uid: 4, max_asistentes: 40)
      expect(carrete).not_to be_valid
    end

    it "does not create bc it hasn't user id" do
      carrete = described_class.new(nombre: 'Carrete 5', direccion: 'Avenida 5', cid: 5, max_asistentes: 50)
      expect(carrete).not_to be_valid
    end

    it "does not create bc it hasn't maximum attendees" do
      carrete = described_class.new(nombre: 'Carrete 6', direccion: 'Avenida 6', cid: 6, uid: 6)
      expect(carrete).not_to be_valid
    end

    it 'does not create bc city id is off limit' do
      carrete = described_class.new(nombre: 'Carrete 7', direccion: 'Avenida 7', cid: 700, uid: 7, max_asistentes: 70)
      expect(carrete).not_to be_valid
    end
  end
  # puedo hacer un test para evaluar si no tiene cada uno de los parametros necesarios
end
