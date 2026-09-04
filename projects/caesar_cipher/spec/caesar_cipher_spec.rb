require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe 'Caesar Cipher' do
  describe 'caesar_cipher' do
    it 'shifts each letter forward by the shift amount' do
      expect(caesar_cipher('abc', 3)).to eq('def')
    end

    it 'preserves the case of each letter' do
      expect(caesar_cipher('Hello', 1)).to eq('Ifmmp')
    end

    it 'leaves spaces and punctuation untouched' do
      expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
    end

    it 'leaves digits untouched' do
      expect(caesar_cipher('abc 123', 1)).to eq('bcd 123')
    end

    it 'returns an empty string when given an empty string' do
      expect(caesar_cipher('', 7)).to eq('')
    end

    context 'when the shift runs off the end of the alphabet' do
      it 'wraps lowercase letters around to the start' do
        expect(caesar_cipher('xyz', 3)).to eq('abc')
      end

      it 'wraps uppercase letters around to the start' do
        expect(caesar_cipher('XYZ', 3)).to eq('ABC')
      end

      it 'wraps every letter of the alphabet exactly once' do
        expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz', 1)).to eq('bcdefghijklmnopqrstuvwxyza')
      end
    end

    context 'when the shift amount is zero' do
      it 'returns the string unchanged' do
        expect(caesar_cipher('Hello, World!', 0)).to eq('Hello, World!')
      end
    end

    context 'when the shift amount is 26' do
      it 'returns the string unchanged' do
        expect(caesar_cipher('Hello, World!', 26)).to eq('Hello, World!')
      end
    end

    context 'when the shift amount is larger than 26' do
      it 'wraps the shift around the alphabet' do
        expect(caesar_cipher('abc', 29)).to eq('def')
      end
    end

    context 'when the shift amount is negative' do
      it 'shifts each letter backward' do
        expect(caesar_cipher('def', -3)).to eq('abc')
      end

      it 'wraps backward past the start of the alphabet' do
        expect(caesar_cipher('abc', -3)).to eq('xyz')
      end
    end

    context 'when a string is enciphered and then deciphered' do
      it 'returns the original string' do
        original = 'The quick brown Fox jumps over 2 lazy dogs!'

        expect(caesar_cipher(caesar_cipher(original, 13), -13)).to eq(original)
      end
    end
  end

  describe 'shift_char' do
    it 'shifts a single lowercase letter' do
      expect(shift_char('a', 2)).to eq('c')
    end

    it 'shifts a single uppercase letter' do
      expect(shift_char('A', 2)).to eq('C')
    end

    it 'returns non-letter characters unchanged' do
      expect(shift_char('!', 5)).to eq('!')
    end
  end
end
