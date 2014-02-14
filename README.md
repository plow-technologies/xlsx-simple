# xlsx-simple

Xlsx simple sets up an excel writing api with very simple defaults

no color choice other than red green black and only two size fonts.

It always starts writing in the first cell and the format is
a doubly nested list where the inner list represents a list of rows.



## Installation


should probably be ran in a sandbox
use smurphy8 version of xlsx 
cabal install

## Usage

###Style Sheet
<table>
<tr>
<th>
StyleId</th> <th> FontSz</th>  <th>  Style</th>        <th>Color</th>
</tr>

<tr> <td>6   </td>     <td> 12 </td> <td>    Bold     </td>  <td>  Black  <td>
<tr><td> 7   </td>     <td> 12 </td> <td>    Italic   </td>  <td>  Black  <td>
<tr><td> 8   </td>     <td> 12 </td> <td>    Underline</td>  <td>  Black  <td>
<tr><td> 9   </td>     <td> 12 </td> <td>    Normal   </td>  <td>  Black  <td>
<tr><td> 10  </td>     <td> 10 </td> <td>    Bold     </td>  <td>  Black  <td>
<tr><td> 11  </td>     <td> 10 </td> <td>    Italic   </td>  <td>  Black  <td>
<tr><td> 12  </td>     <td> 10 </td> <td>    Normal   </td>  <td>  Black  <td>
<tr><td> 13  </td>     <td> 10 </td> <td>    Bold     </td>  <td>  Green  <td>
<tr><td> 14  </td>     <td> 10 </td> <td>    Italic   </td>  <td>  Green  <td>
<tr><td> 15  </td>     <td> 10 </td> <td>    Normal   </td>  <td>  Green  <td>
<tr><td> 16  </td>     <td> 10 </td> <td>    Bold     </td>  <td>  Red	  <td>
<tr><td> 17  </td>     <td> 10 </td> <td>    Italic   </td>  <td>  Red	  <td>
<tr><td> 18  </td>     <td> 10 </td> <td>    Normal   </td>  <td>  Red	  <td>
<tr><td> 19  </td>     <td> 10 </td> <td>    Bold     </td>  <td>  Gray	  <td>
<tr><td> 20  </td>     <td> 10 </td> <td>    Italic   </td>  <td>  Gray	  <td>
<tr><td> 21  </td>     <td> 10 </td> <td>    Normal   </td>  <td>  Gray	  <td>

</table>


TODO: Write usage instructions here

## How to run tests

```
cabal configure --enable-tests && cabal build && cabal test
```

## Contributing

TODO: Write contribution instructions here
