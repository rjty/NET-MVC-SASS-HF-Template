<%@ Page Title="Lists In C#" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lists.aspx.cs" Inherits="ShoppingList.Lists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>How to use C# List Class</h3>
    <p>List < T > Class</p>



    <h4>c# list example</h4>
    <p>The Collection classes are a group of classes designed specifically for grouping together objects and performing tasks on them. 
       List class is a collection and defined in the System.Collections.Generic namespace and it provides the methods and properties 
       like other Collection classes such as add, insert, remove, search etc. It's the replacement for arrays, linked lists, queues, 
        and most other one-dimensional data structures. This is because it has all kinds of extra functionality, including the ability 
        to grow in size on-demand.</p>
    <p></p>
    <p>The C# List < T > class represents a strongly typed list of objects that can be accessed by index and it supports storing 
        values of a specific type without casting to or from object.</p>
    <p></p>

    <h4>
        <pre>List < T ></pre>
    </h4>

   <p>The parameter T is the type of elements in the list.</p>
    <p></p>

    <p>c# add items in a list - sample</p>

    <h4>Add Integer values in the List collection</h4>

    <pre>
	List< int > iList = new List< int >();
	iList.Add(2);
	iList.Add(3);
	iList.Add(5);
	iList.Add(7);
</pre>

    <h4>Add String values in the List</h4>

    <pre>
    List< string > colors = new List< string >();
    colors.Add("Red");
    colors.Add("Blue");
    colors.Add("Green");
</pre>

    <h4>c# count items in a list</h4>

    <h4>How to find the size of a list?</h4>

    <p>You can use count property to know the number of items in the List collection or the length of a C# List</p>

    <pre>
colors.Count
</pre>

    <h4>c# for each loop in a list</h4>
   
    <p>You can retrieve items from List collection by using for loops. </p>

    <pre>

    foreach loop
    foreach (string color in colors)
    {
        //MessageBox.Show(color);
    }


    for loop
    for (int i = 0; i < colors.Count; i++)
    {
        //MessageBox.Show(colors[i]);
    }
    </pre>

    <h4>c# insert items in a list</h4>
    <p>You can use insert(index,item) method to insert an in the specified index. </p>


    <pre>
           colors.Insert(1, "violet");
    </pre>

    <p> In the above code the color "violet" inserted in the index position 1. </p>

    <h4>How to sort a C# List</h4>

     <p>You can use the sort() method of C# List for ordering items in the List. </p>


    <pre>
       colors.Sort();

    </pre>

    <h4>How to remove an item from List collection ?</h4>

     <p>Remove() can use to remove item from List collection. </p>
    <pre>

			colors.Remove("violet");
    </pre>

    <h4>How to check if an item exist in the List collection ?</h4>

     <p>You can use List.Contains() methods to check an item exists in the List </p>


    <pre>
    if (colors.Contains("Blue"))
    {
        MessageBox.Show("Blue color exist in the list");
    }
    </pre>

    <h4>How to copy an Array to a List collection ?</h4>

    <pre>
    string[] strArr = new string[3];
    strArr[0] = "Red";
    strArr[1] = "Blue";
    strArr[2] = "Green";
	//here to copy array to List
    List<string> arrlist = new List<string>(strArr);
</pre>

    <h4>How to Convert List to String in C#</h4>

     <p>You can convert a C# List to a string use the following method. </p>


    <pre>
	string combindedString = string.Join(",", colors);
</pre>

     <p>The output looks like this - "Red,Blue,Green" </p>

You can replace the seperator to any character instead of ","

    <h4>Convert List to Array in C#</h4>

     <p>You can convert a C# List to an Array using toArray() method. </p>

    <pre>
	string[] arr = colors.ToArray();
    </pre>


<h4>How to empty a list in C#?</h4>

 <p>Finally clear method remove all the items from List collection. </p>

    
    <pre>
	arrlist.Clear ();
    </pre>

<h4>c# List Vs Arraylist</h4>
 <p>In C# List is depend by array so the theoretical limit of size would be the limit of the array's capacity.
    Appending elements is efficient because we are using the free slots at the end, but inserting elements  </p>
   <p>  can be slow because all elements in the List after the insertion point have to be shifted to make a free slot.
    In case of searching, it is is efficient if the BinarySearch method is used on a list that has been sorted, 
    if you use any other search algoritham is inefficient because each item must be individually checked. </p>

<h4>List Vs Array</h4>

 <p>Arrays are memory-efficient. Lists are built on top of arrays. Because of this, Lists use more memory to store the same data. 
    Array is useful when you know the data is fixed length, or unlikely to grow much. It is better when you will be doing 
    lots of indexing into it, i.e. you know you will often want the third element, or the fifth, or whatever. On the other hand, 
    if you don't know how many elements you'll have, use List. Also, definitely use a List any time you want to add/remove data, 
    since resizing arrays is expensive. </p>

 <h4>How to get duplicate items from a list using LINQ </h4>

<pre>

List<String> duplicates = lst.GroupBy(x => x)
                             .Where(g => g.Count() > 1)
                             .Select(g => g.Key)
                             .ToList();
    </pre>

 <p>The GroupBy keyword groups the elements that are the same together, and the Where keyword filters out those that
    only appear once, leaving you with only the duplicates. </p>

Difference between list and dictionary in C#
 <p>Both lists and dictionaries are used to store collections of data. List (ICollection ) is simply a set of items 
   and Dictionary(IDictionary) is a set of key-value pairs. The essential difference therefore is in how the containers
    are indexed. If you want to know more details..... what is the difference between list and dictionary ? </p>
  
</asp:Content>
