
TREE =
{
  name: 'grandpa_1',
  children:
    [
      {
        name: 'papa_A_1',
        children:
          [
            {
              name: 'son_A_1',
              children: []
            },
            {
              name: 'son_A_2',
              children:[]
            }
          ]
      },
      {

        name: 'papa_B_1',
        children:
        [
          {
            name: 'son_B_1',
            children: []
          },
          {
            name: 'son_B_2',
            children: []
          }
        ]
      }
    ]
}

def recursive(tree)
  puts tree[:name]
  tree[:children].each { |leaf| recursive(leaf) } if tree[:children].any?
end

recursive(TREE)
