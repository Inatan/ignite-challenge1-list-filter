defmodule ListFilterTest do
  use ExUnit.Case

  describe "call\1" do
    test "give a list, returns the count of odd numbers of list" do
      response = ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])
      expected_response = 3
      assert response == expected_response
    end

    test "give a list without odd numbers, returns 0" do
      response = ListFilter.call(["banana", "6", "abc"])
      expected_response = 0
      assert response == expected_response
    end

    test "give a empty list, returns 0" do
      response = ListFilter.call([])
      expected_response = 0
      assert response == expected_response
    end
  end
end
