class AddLocaleToQuestionCategories < ActiveRecord::Migration
  def self.up
    add_column :question_categories, :locale, :string
    QuestionCategory.update_all :locale => I18n.default_locale
  end
 
  def self.down
    remove_column :question_categories, :locale
  end
end
