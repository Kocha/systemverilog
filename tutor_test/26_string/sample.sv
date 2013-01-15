module tb;

  string  str;
  string  str2 = "HogeHoge";
  string  str3;
  string  str4;
  string  str_ = "1234";
  integer int_ = 1234;
  real    real_ = 1234.025;

  initial begin
    str = "hoge";
    $display("str = %s, str2 = %s", str, str2);
    // []指定
    $display("str[0] = %s", str[0]);
    $display("str[1] = %s", str[1]);
    $display("str[2] = %s", str[2]);
    $display("str[3] = %s", str[3]);
    // 比較演算子
    if(str == str2) $display("info:str == str2");
    if(str != str2) $display("info:str != str2");
    if(str <  str2) $display("info:str <  str2");
    if(str >  str2) $display("info:str >  str2");
    if(str <= str2) $display("info:str <= str2");
    if(str >= str2) $display("info:str >= str2");
    // 連結
    str3 = {str,str2}; $display("str3 = %s", str3);
    // 繰り返し
    str4 = {3{str}}; $display("str4 = %s", str4);
    // メンバ関数
    $display("str.len() = %4d", str.len());
    str2.putc(2,"a"); $display("str2.putc(2,a) = %s", str2);
    $display("str.getc(1) = %s", str.getc(1));
    $display("str2.toupper() = %s", str2.toupper());
    $display("str2.tolower() = %s", str2.tolower());
    $display("str.compare(str4[0:3])  = %4d", str.compare(str4[0:3]));
    $display("str.icompare(str4[0:3]) = %4d", str.icompare(str4[0:3]));
    $display("str3.substr(3,6)) = %s", str3.substr(3,6));
    //// 数値関係
    $display("str_.atoi()    = %4d", str_.atoi());
    $display("str_.atohex()  = %4d", str_.atohex());
    $display("str_.atooct()  = %4d", str_.atooct());
    $display("str_.atobin()  = %4d", str_.atobin());
    $display("str_.atoreal() = %4f", str_.atoreal());

    str_.itoa(int_);    $display("str_.itoa()    = %s",  str_);
    str_.hextoa(int_);  $display("str_.hextoa()  = %s",  str_);
    str_.octtoa(int_);  $display("str_.octtoa()  = %s",  str_);
    str_.bintoa(int_);  $display("str_.bintoa()  = %s",  str_);
    str_.realtoa(real_);$display("str_.realtoa() = %s",  str_);
  end

endmodule
