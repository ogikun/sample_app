#frozen_string_literal: true

require 'rails_helper'

describe '投稿のテスト' do
  let!(:list){create(:book,title:'title',body:'body')}
  describe 'トップ画面のテスト' do
    before do
      visit top_path
    end
    context '表示の確認' do
      it 'トップ画面に「ここはTopページです」が表示されているか' do
        expect(page).to have_content 'ここはTopページです'
      end
      it 'top_pathが"/top"であるか'
        expect(current_path).to eq('/top')
    end
  end
  describe '投稿画面のテスト' do
    before do
      visit todolist_new_path
    end
    context '表示の確認' do
      it '投稿ボタンが表示されているか'
    end
  end
end