# flag_shop (General Skills)

There's a flag shop selling stuff, can you buy a flag?<br>
Connect with
`nc <host> <port>`

## Find the flag; Shall we?

First let's take a look at the source code. The program is written in C.
The part where things get interesting is this one <img src="./assets/images/capture1.png">

<p>
So, technically the data type is integer (values), account_balance is equal to account_balance - total_cost and there's a way where we can manipulate this operation in order to top up the balance.
In other words this is called `Integer Overflow`
</p>
<br>
<i>When you go above the maximum value of the signed integer, the result usually becomes a negative number. For example, 2,147,483,647 +1 is usually −2,147,483,648. When you go below the minimum value (underflow), the result usually becomes a positive number. For example, −2,147,483,648 − 1 is usually 2,147,483,647.</i>
<p>
If we try to input the value `2147483647` which is the maximum value of integer:</p>
<img src="./assets/images/capture2.png">
<p>
That's a good sign. My balance has been changed. I go back at the line where the number_flags is multiplied by 900, so I divide the `2147483647` by 900, at the end total_cost is equal to INT_MAX:</p>
<img src="./assets/images/capture3.png">
<p>
The rounded value would be 2400000. Let's try it out.</p>
<img src="./assets/images/capture4.png">
<p>
Now we're rich so we can afford to buy the flag.</p>
<img src="./assets/images/capture5.png">
<br>

<i>YOUR FLAG IS: picoCTF{m0n3y_bag5_65d67a74}</i>

[What Is Integer Overflow - Acunetix](https://www.acunetix.com/blog/web-security-zone/what-is-integer-overflow/)
