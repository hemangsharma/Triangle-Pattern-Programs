⍞←'Enter the number of rows: '
rows←⍎⍞
for i in ⍳rows
    for j in ⍳rows-i
        ⍞←' '
    end
    for k in ⍳i
        ⍞←'* '
    end
    ⍞←⍊
end