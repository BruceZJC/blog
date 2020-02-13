package com.try1t.controller;
import java.util.regex.Pattern;

public class CommonMethods {

/**
* ɾ��Html��ǩ
* @param inputString
* @return
*/
public String removeHtmlTag(String inputString) {
if (inputString == null)
return null;
String htmlStr = inputString; // ��html��ǩ���ַ���
String textStr = "";
java.util.regex.Pattern p_script;
java.util.regex.Matcher m_script;
java.util.regex.Pattern p_style;
java.util.regex.Matcher m_style;
java.util.regex.Pattern p_html;
java.util.regex.Matcher m_html;
java.util.regex.Pattern p_special;
java.util.regex.Matcher m_special;
try {
//����script��������ʽ{��<script[^>]*?>[\\s\\S]*?<\\/script>
String regEx_script = "<[\\s]*?script[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?script[\\s]*?>";
//����style��������ʽ{��<style[^>]*?>[\\s\\S]*?<\\/style>
String regEx_style = "<[\\s]*?style[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?style[\\s]*?>";
// ����HTML��ǩ��������ʽ
String regEx_html = "<[^>]+>";
// ����һЩ�����ַ���������ʽ �磺&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
String regEx_special = "\\&[a-zA-Z]{1,10};";

p_script = Pattern.compile(regEx_script, Pattern.CASE_INSENSITIVE);
m_script = p_script.matcher(htmlStr);
htmlStr = m_script.replaceAll(""); // ����script��ǩ
p_style = Pattern.compile(regEx_style, Pattern.CASE_INSENSITIVE);
m_style = p_style.matcher(htmlStr);
htmlStr = m_style.replaceAll(""); // ����style��ǩ
p_html = Pattern.compile(regEx_html, Pattern.CASE_INSENSITIVE);
m_html = p_html.matcher(htmlStr);
htmlStr = m_html.replaceAll(""); // ����html��ǩ
p_special = Pattern.compile(regEx_special, Pattern.CASE_INSENSITIVE);
m_special = p_special.matcher(htmlStr);
htmlStr = m_special.replaceAll(""); // ���������ǩ
textStr = htmlStr;
} catch (Exception e) {
e.printStackTrace();
}
return textStr;// �����ı��ַ���
}

/**
* �����õ�main����
* @param args
*/
public static void main(String[] args) {
}
}