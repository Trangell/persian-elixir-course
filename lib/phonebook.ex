defmodule Phonebook do
  def data do
    [
      %{
        name: "shahryar" , last_name: "tavakkoli", info: %{
          address: "amol",
          mobile: "09368094936",
          age: 10
        }
      },

      %{
        name: "karim" , last_name: "karimi", info: %{
          address: "kermanshah",
          mobile: "336698814525",
          age: 20
        }
      },

      %{
        name: "sara" , last_name: "saraiee", info: %{
          address: "zahedan",
          mobile: "0536998742",
          age: 15
        }
      },

      %{
        name: "ali" , last_name: "alivand", info: %{
          address: "tehran",
          mobile: "092121212121",
          age: 32
        }
      }
    ]
  end
end
