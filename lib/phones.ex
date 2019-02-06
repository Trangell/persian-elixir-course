defmodule Phones do

  def show_phones("sort", "reverse") do
    Enum.sort_by(Phonebook.data, fn(x) -> x.info.age end) |> Enum.reverse
  end

  def show_phones("sort") do
    Enum.sort_by(Phonebook.data, fn(x) -> x.info.age end)
  end

  def show_phones(_) do
    show_phones()
  end

  def show_phones do
    Enum.map(
      Phonebook.data, fn(data) ->
        IO.puts "---------------------------"
        IO.puts "name: #{data.name}, last name: #{data.last_name}"
        IO.puts "mobile: #{data.info.mobile}, address: #{data.info.address}"
      end
    )
  end

  def search_by_name(name) do
    Enum.map(Phonebook.data, fn(x) ->
      if String.contains?(x.name, name), do: IO.puts "name: #{x.name} - last_name: #{x.last_name} - mobile: #{x.info.mobile}"
    end)
  end
  # def test_pipe(fullname) do
  #   fullname
  #   |> String.split(" ")
  #   |> List.first
  #   |> String.capitalize
  # end
end
