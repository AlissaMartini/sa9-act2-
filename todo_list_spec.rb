require "todo_list.rb"

RSpec.describe TodoList do
  let(:list) { TodoList.new }

  describe "#add" do
    it "adds a todo to the list" do
      list.add('todo1')
      expect(list.todos).to include('todo1')
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      list.add('todo2')
      list.remove('todo2')
      expect(list.todos).not_to include('todo2')
    end
  end

  describe "#todos" do
    it "returns all todos" do
      list.add('todo3')
      expect(list.todos).to eq(['todo3'])
    end
  end
end