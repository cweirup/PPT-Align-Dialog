FasdUAS 1.101.10   ��   ��    k             l     ��  ��    &   Pashua binding for AppleScript.     � 	 	 @   P a s h u a   b i n d i n g   f o r   A p p l e S c r i p t .   
  
 l     ��  ��    9 3 See Readme.md for authors/contributors and license     �   f   S e e   R e a d m e . m d   f o r   a u t h o r s / c o n t r i b u t o r s   a n d   l i c e n s e      l     ��������  ��  ��        l     ��  ��    N H Usage: either take the handlers out of this file and use them directly,     �   �   U s a g e :   e i t h e r   t a k e   t h e   h a n d l e r s   o u t   o f   t h i s   f i l e   a n d   u s e   t h e m   d i r e c t l y ,      l     ��  ��    N H        use this file as an AppleScript Library (OS X 10.9 or newer) or      �   �                 u s e   t h i s   f i l e   a s   a n   A p p l e S c r i p t   L i b r a r y   ( O S   X   1 0 . 9   o r   n e w e r )   o r        l     ��  ��    N H        follow the "classical" approach using "load script". The example     �   �                 f o l l o w   t h e   " c l a s s i c a l "   a p p r o a c h   u s i n g   " l o a d   s c r i p t " .   T h e   e x a m p l e     !   l     �� " #��   " J D        script shipped with this file uses "load script" for maximum    # � $ $ �                 s c r i p t   s h i p p e d   w i t h   t h i s   f i l e   u s e s   " l o a d   s c r i p t "   f o r   m a x i m u m !  % & % l     �� ' (��   '          compatibility.    ( � ) ) ,                 c o m p a t i b i l i t y . &  * + * l     ��������  ��  ��   +  , - , l     �� . /��   . = 7 Runs a Pashua dialog and returns the results as a list    / � 0 0 n   R u n s   a   P a s h u a   d i a l o g   a n d   r e t u r n s   t h e   r e s u l t s   a s   a   l i s t -  1 2 1 l     �� 3 4��   3       4 � 5 5    2  6 7 6 l     �� 8 9��   8 5 / Argument 1: Dialog/window configuration string    9 � : : ^   A r g u m e n t   1 :   D i a l o g / w i n d o w   c o n f i g u r a t i o n   s t r i n g 7  ; < ; l     �� = >��   = o i Argument 2: Folder that contains Pashua.app; if an empty string is given, default locations are searched    > � ? ? �   A r g u m e n t   2 :   F o l d e r   t h a t   c o n t a i n s   P a s h u a . a p p ;   i f   a n   e m p t y   s t r i n g   i s   g i v e n ,   d e f a u l t   l o c a t i o n s   a r e   s e a r c h e d <  @ A @ l     �� B C��   B       C � D D    A  E F E l     �� G H��   G   Returns: Record    H � I I     R e t u r n s :   R e c o r d F  J K J i      L M L I      �� N���� 0 
showdialog 
showDialog N  O P O o      ���� 
0 config   P  Q�� Q o      ����  0 customlocation customLocation��  ��   M k    r R R  S T S l     ��������  ��  ��   T  U V U l     �� W X��   W %  Create path for temporary file    X � Y Y >   C r e a t e   p a t h   f o r   t e m p o r a r y   f i l e V  Z [ Z r      \ ] \ m      ^ ^ � _ _   ] n      ` a ` 1    ��
�� 
txdl a 1    ��
�� 
ascr [  b c b r    $ d e d l   " f���� f c    " g h g b      i j i b     k l k l    m���� m I   �� n o
�� .earsffdralis        afdr n m    ��
�� afdmtemp o �� p��
�� 
rtyp p m    	��
�� 
TEXT��  ��  ��   l m     q q � r r  P a s h u a _ j l    s���� s n     t u t 7   �� v w
�� 
cha  v m    ����  w  ;     u l    x���� x c     y z y l    {���� { I   ������
�� .sysorandnmbr    ��� nmbr��  ��  ��  ��   z m    ��
�� 
TEXT��  ��  ��  ��   h m     !��
�� 
TEXT��  ��   e o      ���� 0 tmpfile   c  | } | l  % %��������  ��  ��   }  ~  ~ l  % %�� � ���   � E ? Write temporary file and fill it with the configuration string    � � � � ~   W r i t e   t e m p o r a r y   f i l e   a n d   f i l l   i t   w i t h   t h e   c o n f i g u r a t i o n   s t r i n g   � � � r   % . � � � I  % ,�� � �
�� .rdwropenshor       file � o   % &���� 0 tmpfile   � �� ���
�� 
perm � m   ' (��
�� boovtrue��   � o      ���� 0 fhandle   �  � � � I  / :�� � �
�� .rdwrwritnull���     **** � l  / 2 ����� � c   / 2 � � � o   / 0���� 
0 config   � m   0 1��
�� 
TEXT��  ��   � �� � �
�� 
refn � o   3 4���� 0 fhandle   � �� ���
�� 
as   � m   5 6��
�� 
utf8��   �  � � � I  ; @�� ���
�� .rdwrclosnull���     **** � o   ; <���� 0 fhandle  ��   �  � � � l  A A��������  ��  ��   �  � � � l  A A�� � ���   � &   Get temporary file's POSIX path    � � � � @   G e t   t e m p o r a r y   f i l e ' s   P O S I X   p a t h �  � � � r   A H � � � n   A F � � � 1   B F��
�� 
psxp � o   A B���� 0 tmpfile   � o      ���� 0 posixtmpfile   �  � � � l  I I��������  ��  ��   �  � � � l  I I�� � ���   � 
 	try    � � � �  	 t r y �  � � � r   I Q � � � I   I O�� ����� 0 getpashuapath getPashuaPath �  ��� � o   J K����  0 customlocation customLocation��  ��   � o      ���� 
0 pashua   �  � � � l  R R�� � ���   �  	on error errorMessage    � � � � , 	 o n   e r r o r   e r r o r M e s s a g e �  � � � l  R R�� � ���   � # 		display dialog errorMessage    � � � � : 	 	 d i s p l a y   d i a l o g   e r r o r M e s s a g e �  � � � l  R R�� � ���   �  	end try    � � � �  	 e n d   t r y �  � � � l  R R��������  ��  ��   �  � � � l  R R�� � ���   � A ; Append binary position inside app bundle to "regular" path    � � � � v   A p p e n d   b i n a r y   p o s i t i o n   i n s i d e   a p p   b u n d l e   t o   " r e g u l a r "   p a t h �  � � � l  R R�� � ���   � 8 2 and convert path from HFS to POSIX representation    � � � � d   a n d   c o n v e r t   p a t h   f r o m   H F S   t o   P O S I X   r e p r e s e n t a t i o n �  � � � r   R ] � � � b   R [ � � � l  R W ����� � n   R W � � � 1   S W��
�� 
psxp � o   R S���� 
0 pashua  ��  ��   � m   W Z � � � � � * C o n t e n t s / M a c O S / P a s h u a � o      ���� 0 pashuabinary   �  � � � l  ^ ^��������  ��  ��   �  � � � l  ^ ^�� � ���   � 1 + Execute pashua and get the string returned    � � � � V   E x e c u t e   p a s h u a   a n d   g e t   t h e   s t r i n g   r e t u r n e d �  � � � r   ^ o � � � b   ^ m � � � b   ^ g � � � n   ^ c � � � 1   _ c��
�� 
strq � o   ^ _���� 0 pashuabinary   � m   c f � � � � �    � n   g l � � � 1   h l��
�� 
strq � o   g h���� 0 posixtmpfile   � o      ���� 0 
pashuacall 
pashuaCall �  � � � r   p w � � � I  p u�� ���
�� .sysoexecTEXT���     TEXT � l  p q ����� � o   p q���� 0 
pashuacall 
pashuaCall��  ��  ��   � o      ���� 0 pashuaresult pashuaResult �  � � � l  x x��������  ��  ��   �  � � � l  x x�� � ���   �    Delete the temporary file    � � � � 4   D e l e t e   t h e   t e m p o r a r y   f i l e �  � � � O  x � � � � I  ~ ��� ���
�� .coredeloobj        obj  � o   ~ ���� 0 tmpfile  ��   � m   x { � ��                                                                                  MACS  alis    t  Macintosh HD               ��� H+     7
Finder.app                                                      �X�p��        ����  	                CoreServices    ��$p      �p�J       7   6   5  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  �  � l  � ���~�}�  �~  �}     l  � ��|�|   5 / Check whether the dialog was submitted at all.    � ^   C h e c k   w h e t h e r   t h e   d i a l o g   w a s   s u b m i t t e d   a t   a l l .  l  � ��{	�{   4 . If this is not the case, return an empty list   	 �

 \   I f   t h i s   i s   n o t   t h e   c a s e ,   r e t u r n   a n   e m p t y   l i s t  Z   � ��z�y =   � � o   � ��x�x 0 pashuaresult pashuaResult m   � � �   L   � � J   � ��w�w  �z  �y    l  � ��v�u�t�v  �u  �t    l  � ��s�s     Parse the result    � "   P a r s e   t h e   r e s u l t  r   � � o   � ��r
�r 
ret  n       1   � ��q
�q 
txdl  1   � ��p
�p 
ascr !"! r   � �#$# n   � �%&% 2  � ��o
�o 
citm& o   � ��n�n 0 pashuaresult pashuaResult$ o      �m�m 0 resultlines resultLines" '(' r   � �)*) m   � �++ �,,  * n     -.- 1   � ��l
�l 
txdl. 1   � ��k
�k 
ascr( /0/ r   � �121 J   � ��j�j  2 o      �i�i $0 recordcomponents recordComponents0 343 X   �E5�h65 k   �@77 898 r   � �:;: I  � ��g�f<
�g .sysooffslong    ��� null�f  < �e=>
�e 
psof= m   � �?? �@@  => �dA�c
�d 
psinA o   � ��b�b 0 currentline currentLine�c  ; o      �a�a 	0 eqpos  9 B�`B Z   �@CD�_�^C >  � �EFE o   � ��]�] 	0 eqpos  F m   � ��\�\  D k   �<GG HIH r   � �JKJ n   � �LML 4   � ��[N
�[ 
cworN m   � ��Z�Z M o   � ��Y�Y 0 currentline currentLineK o      �X�X 0 varkey varKeyI OPO Q   �-QRSQ k   � TT UVU r   � �WXW l  � �Y�W�VY n   � �Z[Z 7  � ��U\]
�U 
ctxt\ l  � �^�T�S^ [   � �_`_ o   � ��R�R 	0 eqpos  ` m   � ��Q�Q �T  �S  ]  ;   � �[ o   � ��P�P 0 currentline currentLine�W  �V  X o      �O�O 0 varvalue varValueV aba l  � ��Ncd�N  c > 8 Quote any quotation marks in varValue with a backslash.   d �ee p   Q u o t e   a n y   q u o t a t i o n   m a r k s   i n   v a r V a l u e   w i t h   a   b a c k s l a s h .b fgf l  � ��Mhi�M  h ; 5 The proper way to do this would be a handler, but as   i �jj j   T h e   p r o p e r   w a y   t o   d o   t h i s   w o u l d   b e   a   h a n d l e r ,   b u t   a sg klk l  � ��Lmn�L  m > 8 all code for interfacing to Pashua should be as compact   n �oo p   a l l   c o d e   f o r   i n t e r f a c i n g   t o   P a s h u a   s h o u l d   b e   a s   c o m p a c tl pqp l  � ��Krs�K  r * $ as possible, we rather do it inline   s �tt H   a s   p o s s i b l e ,   w e   r a t h e r   d o   i t   i n l i n eq uvu r   �wxw m   � �yy �zz  "x n     {|{ 1   ��J
�J 
txdl| 1   � ��I
�I 
ascrv }~} r  
� n  ��� 2  �H
�H 
citm� o  �G�G 0 varvalue varValue� o      �F�F 0 	textitems 	textItems~ ��� r  ��� m  �� ���  \ "� n     ��� 1  �E
�E 
txdl� 1  �D
�D 
ascr� ��� r  ��� c  ��� o  �C�C 0 	textitems 	textItems� m  �B
�B 
TEXT� o      �A�A 0 varvalue varValue� ��@� r   ��� m  �� ���  � n     ��� 1  �?
�? 
txdl� 1  �>
�> 
ascr�@  R R      �=�<�;
�= .ascrerr ****      � ****�<  �;  S r  (-��� m  (+�� ���  � o      �:�: 0 varvalue varValueP ��9� s  .<��� l .9��8�7� b  .9��� b  .5��� b  .3��� o  ./�6�6 0 varkey varKey� m  /2�� ���  : "� o  34�5�5 0 varvalue varValue� m  58�� ���  "�8  �7  � n      ���  ;  :;� o  9:�4�4 $0 recordcomponents recordComponents�9  �_  �^  �`  �h 0 currentline currentLine6 o   � ��3�3 0 resultlines resultLines4 ��� l FF�2�1�0�2  �1  �0  � ��� l FF�/���/  � 1 + Return the record we read from the tmpfile   � ��� V   R e t u r n   t h e   r e c o r d   w e   r e a d   f r o m   t h e   t m p f i l e� ��� r  FM��� m  FI�� ���  ,  � n     ��� 1  JL�.
�. 
txdl� 1  IJ�-
�- 
ascr� ��� r  Na��� l N]��,�+� I N]�*��)
�* .sysodsct****        scpt� b  NY��� b  NU��� m  NQ�� ���  r e t u r n   {� l QT��(�'� c  QT��� o  QR�&�& $0 recordcomponents recordComponents� m  RS�%
�% 
TEXT�(  �'  � m  UX�� ���  }�)  �,  �+  � o      �$�$ 0 
resultlist 
resultList� ��� r  bk��� J  bg�� ��#� m  be�� ���  �#  � n     ��� 1  hj�"
�" 
txdl� 1  gh�!
�! 
ascr� ��� L  lp�� o  lo� �  0 
resultlist 
resultList� ��� l qq����  �  �  �   K ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  � Y S Searches Pashua.app in the location given as argument and in standard search paths   � ��� �   S e a r c h e s   P a s h u a . a p p   i n   t h e   l o c a t i o n   g i v e n   a s   a r g u m e n t   a n d   i n   s t a n d a r d   s e a r c h   p a t h s� ��� l     ����  �      � ���   � ��� l     ����  � : 4 Will trigger an error if Pashua.app cannot be found   � ��� h   W i l l   t r i g g e r   a n   e r r o r   i f   P a s h u a . a p p   c a n n o t   b e   f o u n d� ��� l     ����  �      � ���   � ��� l     ����  � m g Argument: Folder that contains Pashua.app; if an empty string is given, default locations are searched   � ��� �   A r g u m e n t :   F o l d e r   t h a t   c o n t a i n s   P a s h u a . a p p ;   i f   a n   e m p t y   s t r i n g   i s   g i v e n ,   d e f a u l t   l o c a t i o n s   a r e   s e a r c h e d� ��� l     ����  �      � ���   � ��� l     ����  �   Returns: string   � �       R e t u r n s :   s t r i n g�  i     I      ��� 0 getpashuapath getPashuaPath � o      �� 0 customfolder customFolder�  �   k     	 l     �
�	��
  �	  �  	 

 r     	 l    �� I    �
� .earsffdralis        afdr  f      ��
� 
rtyp m    �
� 
TEXT�  �  �   o      �� 
0 myself    l  
 
� �����   ��  ��    l  
 
����   %  Try to find Pashua application    � >   T r y   t o   f i n d   P a s h u a   a p p l i c a t i o n  O   
 k     l   ��������  ��  ��    !  l   ��"#��  "   Custom location   # �$$     C u s t o m   l o c a t i o n! %&% Z    D'(����' >   )*) o    ���� 0 customfolder customFolder* m    ++ �,,  ( k    @-- ./. Z    &01��20 =    343 n    565 4   ��7
�� 
cha 7 m    ������6 o    ���� 0 customfolder customFolder4 m    88 �99  :1 r     :;: m    << �==  ; o      ���� 
0 dirsep  ��  2 r   # &>?> m   # $@@ �AA  :? o      ���� 
0 dirsep  / B��B Z   ' @CD����C I  ' 3��E��
�� .coredoexbool        obj E 4   ' /��F
�� 
cobjF l  ) .G����G b   ) .HIH b   ) ,JKJ o   ) *���� 0 customfolder customFolderK o   * +���� 
0 dirsep  I m   , -LL �MM  P a s h u a . a p p��  ��  ��  D L   6 <NN b   6 ;OPO b   6 9QRQ o   6 7���� 0 customfolder customFolderR o   7 8���� 
0 dirsep  P m   9 :SS �TT  P a s h u a . a p p :��  ��  ��  ��  ��  & UVU l  E E��������  ��  ��  V WXW l  E E��YZ��  Y 7 1 Try to find it in this script application bundle   Z �[[ b   T r y   t o   f i n d   i t   i n   t h i s   s c r i p t   a p p l i c a t i o n   b u n d l eX \]\ Z   E X^_����^ I  E O��`��
�� .coredoexbool        obj ` 4   E K��a
�� 
cobja l  G Jb����b b   G Jcdc o   G H���� 
0 myself  d m   H Iee �ff * C o n t e n t s : M a c O S : P a s h u a��  ��  ��  _ L   R Tgg o   R S���� 
0 myself  ��  ��  ] hih l  Y Y��������  ��  ��  i jkj l  Y Y��lm��  l 4 . Try to find it in this script's parent's path   m �nn \   T r y   t o   f i n d   i t   i n   t h i s   s c r i p t ' s   p a r e n t ' s   p a t hk opo r   Y cqrq l  Y as����s c   Y atut n   Y _vwv m   ] _��
�� 
ctnrw 4   Y ]��x
�� 
alisx o   [ \���� 
0 myself  u m   _ `��
�� 
TEXT��  ��  r o      ���� 0 myfolder myFolderp yzy Z   d }{|����{ I  d p��}��
�� .coredoexbool        obj } 4   d l��~
�� 
cobj~ l  f k���� b   f k��� o   f g���� 0 myfolder myFolder� m   g j�� ���  P a s h u a . a p p��  ��  ��  | L   s y�� l  s x������ b   s x��� o   s t���� 0 myfolder myFolder� m   t w�� ���  P a s h u a . a p p :��  ��  ��  ��  z ��� l  ~ ~��������  ��  ��  � ��� l  ~ ~������  � 2 , Try to find it in global application folder   � ��� X   T r y   t o   f i n d   i t   i n   g l o b a l   a p p l i c a t i o n   f o l d e r� ��� Z   ~ �������� I  ~ ������
�� .coredoexbool        obj � 4   ~ ����
�� 
cobj� l  � ������� b   � ���� l  � ������� I  � �����
�� .earsffdralis        afdr� m   � ���
�� afdrapps� ����
�� 
from� m   � ���
�� fldmflds� �����
�� 
rtyp� m   � ���
�� 
ctxt��  ��  ��  � m   � ��� ���  P a s h u a . a p p��  ��  ��  � L   � ��� b   � ���� l  � ������� I  � �����
�� .earsffdralis        afdr� m   � ���
�� afdrapps� ����
�� 
from� m   � ���
�� fldmflds� �����
�� 
rtyp� m   � ���
�� 
ctxt��  ��  ��  � m   � ��� ���  P a s h u a . a p p :��  ��  � ��� l  � ���������  ��  ��  � ��� l  � �������  � 2 , Try to find it in user's application folder   � ��� X   T r y   t o   f i n d   i t   i n   u s e r ' s   a p p l i c a t i o n   f o l d e r� ��� Z   � �������� I  � ������
�� .coredoexbool        obj � 4   � ����
�� 
cobj� l  � ������� b   � ���� l  � ������� I  � �����
�� .earsffdralis        afdr� m   � ���
�� afdrapps� ����
�� 
from� m   � ���
�� fldmfldu� �����
�� 
rtyp� m   � ���
�� 
ctxt��  ��  ��  � m   � ��� ���  P a s h u a . a p p��  ��  ��  � L   � ��� l  � ������� b   � ���� l  � ������� I  � �����
�� .earsffdralis        afdr� m   � ���
�� afdrapps� ����
�� 
from� m   � ���
�� fldmfldu� �����
�� 
rtyp� m   � ���
�� 
ctxt��  ��  ��  � m   � ��� ���  P a s h u a . a p p :��  ��  ��  ��  � ��� l  � ���������  ��  ��  � ��� R   ������
�� .ascrerr ****      � ****� b   ���� b   ���� b   ���� m   � ��� ��� 2 C o u l d   n o t   f i n d   P a s h u a . a p p� o   ��
� 
ret � o  �~
�~ 
ret � m  
�� ��� � I t   l o o k s   l i k e   i t   i s   i s   n e i t h e r   i n   o n e   o f   t h e   s t a n d a r d   l o c a t i o n s   n o r   i n   t h e   f o l d e r   t h i s   A p p l e S c r i p t   i s   i n .��  � ��}� l �|�{�z�|  �{  �z  �}   m   
 ���                                                                                  MACS  alis    t  Macintosh HD               ��� H+     7
Finder.app                                                      �X�p��        ����  	                CoreServices    ��$p      �p�J       7   6   5  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   ��y� l �x�w�v�x  �w  �v  �y   ��� l     �u�t�s�u  �t  �s  � ��� l     �r���r  � 4 . Define dialog using Pashua configuration file   � ��� \   D e f i n e   d i a l o g   u s i n g   P a s h u a   c o n f i g u r a t i o n   f i l e� ��� l    ��q�p� r     ��� m     �� ���z 
 #   S e t   w i n d o w   t i t l e 
 * . t i t l e   =   A l i g n   S h a p e s 
 
 #   H o r i z o n t a l   A l i g n   R a d i o b u t t o n s 
 r b h . t y p e   =   r a d i o b u t t o n 
 r b h . l a b e l   =   H o r i z o n t a l   A l i g n m e n t 
 r b h . o p t i o n   =   N o n e 
 r b h . o p t i o n   =   L e f t 
 r b h . o p t i o n   =   C e n t e r 
 r b h . o p t i o n   =   R i g h t 
 r b h . t o o l t i p   =   T h i s   s e t s   t h e   h o r i z o n t a l   a l i g n m e n t   o f   t h e   s e l e c t e d   s h a p e s 
 r b h . d e f a u l t   =   N o n e 
 
 - 
 
 #   V e r t i c a l   A l i g n   R a d i o b u t t o n s 
 r b v . t y p e   =   r a d i o b u t t o n 
 r b v . l a b e l   =   V e r t i c a l   A l i g n m e n t 
 r b v . o p t i o n   =   N o n e 
 r b v . o p t i o n   =   T o p 
 r b v . o p t i o n   =   M i d d l e 
 r b v . o p t i o n   =   B o t t o m 
 r b v . t o o l t i p   =   T h i s   s e t s   t h e   v e r t i c a l   a l i g n m e n t   o f   t h e   s e l e c t e d   s h a p e s 
 r b v . d e f a u l t   =   N o n e 
 
 #   B u t t o n   t o   a p p l y   a l i g n m e n t s 
 d b u t . t y p e   =   d e f a u l t b u t t o n 
 d b u t . l a b e l   =   A p p l y 
 
 #   B u t t o n   t o   c a n c e l   a l i g n m e n t s 
 c b u t . t y p e   =   c a n c e l b u t t o n 
 c b u t . l a b e l   =   C a n c e l 
� o      �o�o 0 dlgdef dlgDef�q  �p  � ��� l     �n�m�l�n  �m  �l  � ��� l     �k���k  �   Show the dialog   � ���     S h o w   t h e   d i a l o g� ��� l   ��j�i� r    ��� I    �h��g�h 0 
showdialog 
showDialog� ��� o    �f�f 0 dlgdef dlgDef�  �e  m     �  �e  �g  � o      �d�d 0 	theresult 	theResult�j  �i  �  l     �c�b�a�c  �b  �a    l     �`�`   "  Process the returned values    �		 8   P r o c e s s   t h e   r e t u r n e d   v a l u e s 

 l   ��_�^ Z    ��] =    n     o    �\�\ 0 cbut   o    �[�[ 0 	theresult 	theResult m     �  1 I   �Z�Y
�Z .sysodisAaleR        TEXT m     � 0 U s e r   c a n c e l e d   t h e   d i a l o g�Y  �]   k    �  l   �X�X   %  display alert rbh of theResult    � >   d i s p l a y   a l e r t   r b h   o f   t h e R e s u l t   l   �W!"�W  ! ] W display alert "Horizontal = " & rbh of theResult & ", Vertical = " & rbv of the result   " �## �   d i s p l a y   a l e r t   " H o r i z o n t a l   =   "   &   r b h   o f   t h e R e s u l t   &   " ,   V e r t i c a l   =   "   &   r b v   o f   t h e   r e s u l t  $�V$ O    �%&% k   " �'' ()( r   " +*+* n   " ),-, m   ' )�U
�U 
ShpR- n   " './. m   % '�T
�T 
SelO/ 1   " %�S
�S 
AAWn+ o      �R�R 0 theshaperange theShapeRange) 010 Z   , �234�Q2 l  , 15�P�O5 =   , 1676 n   , /898 o   - /�N�N 0 rbh  9 o   , -�M�M 0 	theresult 	theResult7 m   / 0:: �;;  L e f t�P  �O  3 I  4 E�L<=
�L .sDRwsAlnnull���     ShpR< o   4 5�K�K 0 theshaperange theShapeRange= �J>?
�J 
mAlC> m   8 ;�I
�I mAlC    ? �H@�G
�H 
rel2@ m   > ?�F
�F boovfals�G  4 ABA l  H OC�E�DC =   H ODED n   H KFGF o   I K�C�C 0 rbh  G o   H I�B�B 0 	theresult 	theResultE m   K NHH �II  C e n t e r�E  �D  B JKJ I  R c�ALM
�A .sDRwsAlnnull���     ShpRL o   R S�@�@ 0 theshaperange theShapeRangeM �?NO
�? 
mAlCN m   V Y�>
�> mAlC   O �=P�<
�= 
rel2P m   \ ]�;
�; boovfals�<  K QRQ l  f mS�:�9S =   f mTUT n   f iVWV o   g i�8�8 0 rbh  W o   f g�7�7 0 	theresult 	theResultU m   i lXX �YY 
 R i g h t�:  �9  R Z�6Z I  p ��5[\
�5 .sDRwsAlnnull���     ShpR[ o   p q�4�4 0 theshaperange theShapeRange\ �3]^
�3 
mAlC] m   t w�2
�2 mAlC   ^ �1_�0
�1 
rel2_ m   z {�/
�/ boovfals�0  �6  �Q  1 `a` l  � ��.�-�,�.  �-  �,  a bcb l  � ��+de�+  d %  display alert rbv of theResult   e �ff >   d i s p l a y   a l e r t   r b v   o f   t h e R e s u l tc ghg l  � ��*ij�*  i   Vertical alignments   j �kk (   V e r t i c a l   a l i g n m e n t sh lml Z   � �nop�)n l  � �q�(�'q =   � �rsr n   � �tut o   � ��&�& 0 rbv  u o   � ��%�% 0 	theresult 	theResults m   � �vv �ww  T o p�(  �'  o I  � ��$xy
�$ .sDRwsAlnnull���     ShpRx o   � ��#�# 0 theshaperange theShapeRangey �"z{
�" 
mAlCz m   � ��!
�! mAlC   { � |�
�  
rel2| m   � ��
� boovfals�  p }~} l  � ��� =   � ���� n   � ���� o   � ��� 0 rbv  � o   � ��� 0 	theresult 	theResult� m   � ��� ���  M i d d l e�  �  ~ ��� I  � ����
� .sDRwsAlnnull���     ShpR� o   � ��� 0 theshaperange theShapeRange� ���
� 
mAlC� m   � ��
� mAlC   � ���
� 
rel2� m   � ��
� boovfals�  � ��� l  � ����� =   � ���� n   � ���� o   � ��� 0 rbv  � o   � ��� 0 	theresult 	theResult� m   � ��� ���  B o t t o m�  �  � ��� I  � ����
� .sDRwsAlnnull���     ShpR� o   � ��� 0 theshaperange theShapeRange� ���
� 
mAlC� m   � ��

�
 mAlC   � �	��
�	 
rel2� m   � ��
� boovfals�  �  �)  m ��� l  � �����  �  �  �  & m    ���                                                                                  PPT3  alis    �  Macintosh HD               ��� H+     VMicrosoft PowerPoint.app                                        ��Ҷ(0        ����  	                Applications    ��$p      Ҷn�       V  3Macintosh HD:Applications: Microsoft PowerPoint.app   2  M i c r o s o f t   P o w e r P o i n t . a p p    M a c i n t o s h   H D  %Applications/Microsoft PowerPoint.app   / ��  �V  �_  �^   ��� l     �� ���  �   ��  �       ��������  � �������� 0 
showdialog 
showDialog�� 0 getpashuapath getPashuaPath
�� .aevtoappnull  �   � ****� �� M���������� 0 
showdialog 
showDialog�� ����� �  ������ 
0 config  ��  0 customlocation customLocation��  � ������������������������������������ 
0 config  ��  0 customlocation customLocation�� 0 tmpfile  �� 0 fhandle  �� 0 posixtmpfile  �� 
0 pashua  �� 0 pashuabinary  �� 0 
pashuacall 
pashuaCall�� 0 pashuaresult pashuaResult�� 0 resultlines resultLines�� $0 recordcomponents recordComponents�� 0 currentline currentLine�� 	0 eqpos  �� 0 varkey varKey�� 0 varvalue varValue�� 0 	textitems 	textItems�� 0 
resultlist 
resultList� 4 ^������������ q������������������������ ��� ��� �������+��������?��������y���������������
�� 
ascr
�� 
txdl
�� afdmtemp
�� 
rtyp
�� 
TEXT
�� .earsffdralis        afdr
�� .sysorandnmbr    ��� nmbr
�� 
cha 
�� 
perm
�� .rdwropenshor       file
�� 
refn
�� 
as  
�� 
utf8�� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****
�� 
psxp�� 0 getpashuapath getPashuaPath
�� 
strq
�� .sysoexecTEXT���     TEXT
�� .coredeloobj        obj 
�� 
ret 
�� 
citm
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
psof
�� 
psin
�� .sysooffslong    ��� null
�� 
cwor
�� 
ctxt��  ��  
�� .sysodsct****        scpt��s���,FO���l �%*j �&[�\[Zm\62%�&E�O��el E�O��&���� O�j O�a ,E�O*�k+ E�O�a ,a %E�O�a ,a %�a ,%E�O�j E�Oa  �j UO�a   jvY hO_ ��,FO�a -E�Oa ��,FOjvE�O ��[a a l  kh *a !a "a #�� $E�O�j c�a %k/E�O ;�[a &\[Z�k\62E�Oa '��,FO�a -E�Oa (��,FO��&E�Oa )��,FW X * +a ,E�O�a -%�%a .%�6GY h[OY��Oa /��,FOa 0��&%a 1%j 2E^ Oa 3kv��,FO] OP� ������������ 0 getpashuapath getPashuaPath�� ����� �  ���� 0 customfolder customFolder��  � ���������� 0 customfolder customFolder�� 
0 myself  �� 
0 dirsep  �� 0 myfolder myFolder� �������+��8<@��L��Se��������������������������
�� 
rtyp
�� 
TEXT
�� .earsffdralis        afdr
�� 
cha 
�� 
cobj
�� .coredoexbool        obj 
�� 
alis
�� 
ctnr
�� afdrapps
�� 
from
�� fldmflds
�� 
ctxt�� 
�� fldmfldu
�� 
ret ��)��l E�O��� 1��i/�  �E�Y �E�O*頢%�%/j  ��%�%Y hY hO*��%/j  �Y hO*�/�,�&E�O*�a %/j  �a %Y hO*�a a a �a a  a %/j  a a a �a a  a %Y hO*�a a a �a a  a %/j  a a a �a a  a %Y hO)ja _ %_ %a %OPUOP� �����������
�� .aevtoappnull  �   � ****� k     ��� ��� ��� 
����  ��  ��  �  �  ����������������������:����������H��X����v���������� 0 dlgdef dlgDef�� 0 
showdialog 
showDialog�� 0 	theresult 	theResult�� 0 cbut  
�� .sysodisAaleR        TEXT
�� 
AAWn
�� 
SelO
�� 
ShpR�� 0 theshaperange theShapeRange�� 0 rbh  
�� 
mAlC
�� mAlC    
�� 
rel2�� 
�� .sDRwsAlnnull���     ShpR
�� mAlC   
�� mAlC   �� 0 rbv  
�� mAlC   
�� mAlC   
�� mAlC   �� ��E�O*��l+ E�O��,�  
�j Y �� �*�,�,�,E�O��,�  �a a a fa  Y ?��,a   �a a a fa  Y !��,a   �a a a fa  Y hO�a ,a   �a a a fa  Y C�a ,a   �a a a fa  Y #�a ,a   �a a a fa  Y hOPU ascr  ��ޭ