if Doodad.exists?
  p "Not seeding non-empty doodad table!"
  return
end

Doodad.create!(
  [
    {
      name: "Foo",
      color: "firebrick",
    },
    {
      name: "Bar",
      color: "deepskyblue",
    },
    {
      name: "Baz",
      color: "Lemonchiffon",
    },
    {
      name: "Qux",
      color: "goldenrod",
    },
  ]
)

p "Created #{Doodad.count} doodads. Have fun!"
