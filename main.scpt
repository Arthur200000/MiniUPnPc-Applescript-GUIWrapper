FasdUAS 1.101.10   ��   ��    k             l     ��  ��    $  AppleScript GUI for MiniUPnPc     � 	 	 <   A p p l e S c r i p t   G U I   f o r   M i n i U P n P c   
  
 l     ��  ��    7 1 Copyright � Arthur Wang <arthur200126@gmail.com>     �   b   C o p y r i g h t   �   A r t h u r   W a n g   < a r t h u r 2 0 0 1 2 6 @ g m a i l . c o m >      l     ��  ��      All rights reserved.     �   *   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l     ��  ��    I C     Redistributions of source code must retain the above copyright     �   �           R e d i s t r i b u t i o n s   o f   s o u r c e   c o d e   m u s t   r e t a i n   t h e   a b o v e   c o p y r i g h t      l     ��  ��    J D       notice, this list of conditions and the following disclaimer.     �   �               n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r .     !   l     �� " #��   " L F     Redistributions in binary form must reproduce the above copyright    # � $ $ �           R e d i s t r i b u t i o n s   i n   b i n a r y   f o r m   m u s t   r e p r o d u c e   t h e   a b o v e   c o p y r i g h t !  % & % l     �� ' (��   ' P J       notice, this list of conditions and the following disclaimer in the    ( � ) ) �               n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r   i n   t h e &  * + * l     �� , -��   , Q K       documentation and/or other materials provided with the distribution.    - � . . �               d o c u m e n t a t i o n   a n d / o r   o t h e r   m a t e r i a l s   p r o v i d e d   w i t h   t h e   d i s t r i b u t i o n . +  / 0 / l     �� 1 2��   1 M G     Neither the name of the University of California, Berkeley nor the    2 � 3 3 �           N e i t h e r   t h e   n a m e   o f   t h e   U n i v e r s i t y   o f   C a l i f o r n i a ,   B e r k e l e y   n o r   t h e 0  4 5 4 l     �� 6 7��   6 Q K       names of its contributors may be used to endorse or promote products    7 � 8 8 �               n a m e s   o f   i t s   c o n t r i b u t o r s   m a y   b e   u s e d   t o   e n d o r s e   o r   p r o m o t e   p r o d u c t s 5  9 : 9 l     �� ; <��   ; R L       derived from this software without specific prior written permission.    < � = = �               d e r i v e d   f r o m   t h i s   s o f t w a r e   w i t h o u t   s p e c i f i c   p r i o r   w r i t t e n   p e r m i s s i o n . :  > ? > l     ��������  ��  ��   ?  @ A @ l     �� B C��   B P J THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS "AS IS" AND ANY    C � D D �   T H I S   S O F T W A R E   I S   P R O V I D E D   B Y   T H E   R E G E N T S   A N D   C O N T R I B U T O R S   " A S   I S "   A N D   A N Y A  E F E l     �� G H��   G P J EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED    H � I I �   E X P R E S S   O R   I M P L I E D   W A R R A N T I E S ,   I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   T H E   I M P L I E D F  J K J l     �� L M��   L M G WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE    M � N N �   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A R E K  O P O l     �� Q R��   Q S M DISCLAIMED. IN NO EVENT SHALL THE REGENTS AND CONTRIBUTORS BE LIABLE FOR ANY    R � S S �   D I S C L A I M E D .   I N   N O   E V E N T   S H A L L   T H E   R E G E N T S   A N D   C O N T R I B U T O R S   B E   L I A B L E   F O R   A N Y P  T U T l     �� V W��   V Q K DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    W � X X �   D I R E C T ,   I N D I R E C T ,   I N C I D E N T A L ,   S P E C I A L ,   E X E M P L A R Y ,   O R   C O N S E Q U E N T I A L   D A M A G E S U  Y Z Y l     �� [ \��   [ S M (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;    \ � ] ] �   ( I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   P R O C U R E M E N T   O F   S U B S T I T U T E   G O O D S   O R   S E R V I C E S ; Z  ^ _ ^ l     �� ` a��   ` R L LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND    a � b b �   L O S S   O F   U S E ,   D A T A ,   O R   P R O F I T S ;   O R   B U S I N E S S   I N T E R R U P T I O N )   H O W E V E R   C A U S E D   A N D _  c d c l     �� e f��   e Q K ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT    f � g g �   O N   A N Y   T H E O R Y   O F   L I A B I L I T Y ,   W H E T H E R   I N   C O N T R A C T ,   S T R I C T   L I A B I L I T Y ,   O R   T O R T d  h i h l     �� j k��   j T N (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS    k � l l �   ( I N C L U D I N G   N E G L I G E N C E   O R   O T H E R W I S E )   A R I S I N G   I N   A N Y   W A Y   O U T   O F   T H E   U S E   O F   T H I S i  m n m l     �� o p��   o C = SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.    p � q q z   S O F T W A R E ,   E V E N   I F   A D V I S E D   O F   T H E   P O S S I B I L I T Y   O F   S U C H   D A M A G E . n  r s r l     ��������  ��  ��   s  t u t l     �� v w��   v e _MiniUPnPc is a BSD-licensed free software; MiniUPnPc is availabie at http://miniupnp.free.fr/ .    w � x x � M i n i U P n P c   i s   a   B S D - l i c e n s e d   f r e e   s o f t w a r e ;   M i n i U P n P c   i s   a v a i l a b i e   a t   h t t p : / / m i n i u p n p . f r e e . f r /   . u  y z y l    	 {���� { r     	 | } | n      ~  ~ 1    ��
�� 
siul  l     ����� � e      � � I    ������
�� .sysosigtsirr   ��� null��  ��  ��  ��   } o      ���� 0 user_locale  ��  ��   z  � � � l     ��������  ��  ��   �  � � � l  
 1 ����� � Z   
 1 � ��� � � =   
  � � � o   
 ���� 0 user_locale   � m     � � � � � 
 z h _ C N � k     � �  � � � r     � � � m     � � � � � ��Qeg,W0���lS�v�z�S�S�� � o      ���� 0 	port_desc   �  � � � r     � � � m     � � � � � ��Qe��z�S�lS�R0v�Y��z�S�S�� � o      ���� 0 ext_desc   �  � � � r     � � � m     � � � � � 
SO��|{W�� � o      ���� 0 protocol_desc   �  ��� � r     � � � m     � � � � � .����Qe\��bg�Lz�S�lS�v�u5�W(\@W�QQ�v� I P� � o      ���� 0 ip_prom  ��  ��   � k   " 1 � �  � � � r   " % � � � m   " # � � � � �  L o c a l   P o r t� � o      ���� 0 	port_desc   �  � � � r   & ) � � � m   & ' � � � � �  E x t e r n a l   P o r t : � o      ���� 0 ext_desc   �  � � � r   * - � � � m   * + � � � � �  p r o t o c o l � o      ���� 0 protocol_desc   �  ��� � r   . 1 � � � m   . / � � � � � " E n t e r   I P   A d d r e s s : � o      ���� 0 ip_prom  ��  ��  ��   �  � � � l  2 > ����� � r   2 > � � � J   2 : � �  � � � m   2 5 � � � � �  T C P �  ��� � m   5 8 � � � � �  U D P��   � o      ���� 0 	protocols  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  ? L ����� � r   ? L � � � n   ? H � � � 1   D H��
�� 
siip � l  ? D ����� � e   ? D � � I  ? D������
�� .sysosigtsirr   ��� null��  ��  ��  ��   � o      ���� 
0 ipaddr  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  M n ����� � r   M n � � � l  M j ����� � n   M j � � � 1   f j��
�� 
ttxt � l  M f ����� � I  M f�� � �
�� .sysodlogaskr        TEXT � o   M N���� 0 ip_prom   � �� � �
�� 
appr � m   Q T � � � � �  u p n p c   G U I � �� ���
�� 
dtxt � n   W ` � � � 1   \ `��
�� 
siip � l  W \ ����� � e   W \ � � I  W \������
�� .sysosigtsirr   ��� null��  ��  ��  ��  ��  ��  ��  ��  ��   � o      ���� 
0 ipaddr  ��  ��   �  � � � l  o � ����� � r   o � � � � l  o � ����� � n   o � � � � 1   � ���
�� 
ttxt � l  o � ����� � I  o ��� � �
�� .sysodlogaskr        TEXT � o   o p���� 0 	port_desc   � �� � �
�� 
appr � m   s v � � � � �  u p n p c   G U I � �� ���
�� 
dtxt � m   y |���� ��  ��  ��  ��  ��   � o      ���� 0 
port_local  ��  ��   �  � � � l  � � ����� � r   � � �  � l  � ����� n   � � 1   � ���
�� 
ttxt l  � ����� I  � ���
�� .sysodlogaskr        TEXT o   � ����� 0 ext_desc   ��
�� 
appr m   � �		 �

  u p n p c   G U I ����
�� 
dtxt o   � ����� 0 
port_local  ��  ��  ��  ��  ��    o      ���� 0 port_ext  ��  ��   �  l  � ����� r   � � c   � � l  � ����� I  � ��
� .gtqpchltns    @   @ ns   o   � ��~�~ 0 	protocols   �}
�} 
prmp o   � ��|�| 0 protocol_desc   �{�z
�{ 
appr m   � � �  u p n p c   G U I�z  ��  ��   m   � ��y
�y 
TEXT o      �x�x 0 protocol  ��  ��    l     �w�w   � � Having so many popup windows really sucks��I'm considering to use something like Dialog Maker��However it do costs some dollars��    �   H a v i n g   s o   m a n y   p o p u p   w i n d o w s   r e a l l y   s u c k s & & I ' m   c o n s i d e r i n g   t o   u s e   s o m e t h i n g   l i k e   D i a l o g   M a k e r & & H o w e v e r   i t   d o   c o s t s   s o m e   d o l l a r s & &  !  l     �v�u�t�v  �u  �t  ! "#" l     �s�r�q�s  �r  �q  # $%$ l  � �&�p�o& r   � �'(' b   � �)*) b   � �+,+ b   � �-.- b   � �/0/ b   � �121 b   � �343 b   � �565 b   � �787 m   � �99 �::  u p n p c w r a p p e r  8 m   � �;; �<<   6 o   � ��n�n 
0 ipaddr  4 m   � �== �>>   2 o   � ��m�m 0 
port_local  0 m   � �?? �@@   . o   � ��l�l 0 port_ext  , m   � �AA �BB   * o   � ��k�k 0 protocol  ( o      �j�j 	0 upnpc  �p  �o  % CDC l     �iEF�i  E � � wrapper should look like this: (see http://stackoverflow.com/questions/1596945/building-osx-app-bundle) of course we should use ./upnpc $*   F �GG   w r a p p e r   s h o u l d   l o o k   l i k e   t h i s :   ( s e e   h t t p : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 1 5 9 6 9 4 5 / b u i l d i n g - o s x - a p p - b u n d l e )   o f   c o u r s e   w e   s h o u l d   u s e   . / u p n p c   $ *D HIH l  � �JKLJ I  � ��hM�g
�h .sysoexecTEXT���     TEXTM o   � ��f�f 	0 upnpc  �g  K # with administrator privileges   L �NN : w i t h   a d m i n i s t r a t o r   p r i v i l e g e sI O�eO l     �dPQ�d  P j d Maybe I should have a button to choose some functions like Add Delete Status List Foo Foo Foo Foo��   Q �RR �   M a y b e   I   s h o u l d   h a v e   a   b u t t o n   t o   c h o o s e   s o m e   f u n c t i o n s   l i k e   A d d   D e l e t e   S t a t u s   L i s t   F o o   F o o   F o o   F o o & &�e       �cST�c  S �b
�b .aevtoappnull  �   � ****T �aU�`�_VW�^
�a .aevtoappnull  �   � ****U k     �XX  yYY  �ZZ  �[[  �\\  �]]  �^^  �__ `` $aa H�]�]  �`  �_  V  W ,�\�[�Z � ��Y ��X ��W ��V � � � � � ��U�T�S�R ��Q�P�O�N ��M�L	�K�J�I�H�G9;=?A�F�E
�\ .sysosigtsirr   ��� null
�[ 
siul�Z 0 user_locale  �Y 0 	port_desc  �X 0 ext_desc  �W 0 protocol_desc  �V 0 ip_prom  �U 0 	protocols  
�T 
siip�S 
0 ipaddr  
�R 
appr
�Q 
dtxt�P 
�O .sysodlogaskr        TEXT
�N 
ttxt�M �L 0 
port_local  �K 0 port_ext  
�J 
prmp
�I .gtqpchltns    @   @ ns  
�H 
TEXT�G 0 protocol  �F 	0 upnpc  
�E .sysoexecTEXT���     TEXT�^ �*j  �,E�O��  �E�O�E�O�E�O�E�Y �E�O�E�O�E�O�E�Oa a lvE` O*j  a ,E` O�a a a *j  a ,a  a ,E` O�a a a a a  a ,E` O�a a a _ a  a ,E` O_ a  �a a !a  "a #&E` $Oa %a &%_ %a '%_ %a (%_ %a )%_ $%E` *O_ *j +ascr  ��ޭ