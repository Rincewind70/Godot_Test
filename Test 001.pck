GDPC                                                                             #   H   res://.import/AstrobaseTiles.png-fcdfec99169a7578a2b19e2afd2bae7b.stex  ��      �      ������&��CU{���@   res://.import/Idle0000.png-e0504ecce855981358e175a777018adb.stex0'      �      З¯?��
�]��/�@   res://.import/Idle0001.png-1961c4f60250fb7d09e9b65b5701abca.stex�-            Wp'�r���^�U��X7H   res://.import/LefttWalk0010.png-161863a53c2edd5bca93e86458e07945.stex   �4      �      ٥Y"����8�dIqgH   res://.import/LefttWalk0011.png-ed1a9c6ceb497b1ac498819ccb80fe66.stex   �;      �      ���Ǐ[�����F�H   res://.import/LefttWalk0012.png-6ac009b98e9e855e8bd10d5bfa5b4ce6.stex   C      |      �|����o����H   res://.import/LefttWalk0013.png-62ebb1ad133e80aa70416d55b0d2974e.stex   @J      :      9�$�i�y*6�[��H   res://.import/RightWalk0000.png-45864c869da2abd76cf8b2890ace6495.stex   0R      {      ~elEx�6������H   res://.import/RightWalk0001.png-a85e0db822c33636d654981a4bb64b3d.stex   `Y      �      ^��?5ߒ6�I�H҄H   res://.import/RightWalk0002.png-950de974e3c5d168cb322a7af890a906.stex   �`      w      (���u��K��#K<�H   res://.import/RightWalk0003.png-53b27f828762bfe35fe68b83438b86a8.stex   �g      a      |�ymgzK��pQP5�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex �      �      �p��<f��r�g��.�   res://Node.gd.remap @�             ���
�?��M<�4   res://Node.gdc  �      �       tQ��"5f�t�}	+   res://Node2D.tscn   P      �      ��=�\��11`���   res://Player.gd.remap   `�      !       ��0�F �qq��dX��   res://Player.gdc@      ,      ����o� �<�_�   res://Player.tscn   p      _      �	&�%���{2-��   res://Scene Test.tscn   �"      Y      |������ณK����_,   res://Sprites/Astronaut/Idle0000.png.import 0+      �      Z���ؖ�e�D�v�5t,   res://Sprites/Astronaut/Idle0001.png.import �1      �      GD��`&��r���0   res://Sprites/Astronaut/LefttWalk0010.png.import9      �      ���1���k�7��b7�0   res://Sprites/Astronaut/LefttWalk0011.png.import`@      �      �K�}'a�S.rC�IJ0   res://Sprites/Astronaut/LefttWalk0012.png.import�G      �      G��c4P	�H�����0   res://Sprites/Astronaut/LefttWalk0013.png.import�O      �      G� �������a<��20   res://Sprites/Astronaut/RightWalk0000.png.import�V      �      *#V�� #!嚂ɸ��0   res://Sprites/Astronaut/RightWalk0001.png.import�]      �      ��5�fr��Fc�,0   res://Sprites/Astronaut/RightWalk0002.png.import e      �      u��mZ�~��|[��c0   res://Sprites/Astronaut/RightWalk0003.png.import@m      �      mPQ������ݣ|x~$   res://Tiles/AstroBase.tres  �o      �      i�;.�ݴzbb�)4���(   res://Tiles/AstrobaseTiles.png.import   ��      �      ��E��8V=U,R/�ٰ   res://default_env.tres  p�      �       K��+fr��s����   res://icon.png  ��      i      ����󈘥Ey��
�   res://icon.png.import   ��      �      �����%��(#AB�   res://project.binary �      �      ���W�v�*X���t            GDSC                   ���Ӷ���   �����϶�                                                    	      
                           3YYYYYYY0�  PQV�  -YYYYY`    [gd_scene load_steps=13 format=2]

[ext_resource path="res://Sprites/Astronaut/Idle0000.png" type="Texture" id=1]
[ext_resource path="res://Sprites/Astronaut/Idle0001.png" type="Texture" id=2]
[ext_resource path="res://Sprites/Astronaut/RightWalk0000.png" type="Texture" id=3]
[ext_resource path="res://Sprites/Astronaut/RightWalk0001.png" type="Texture" id=4]
[ext_resource path="res://Sprites/Astronaut/RightWalk0002.png" type="Texture" id=5]
[ext_resource path="res://Sprites/Astronaut/RightWalk0003.png" type="Texture" id=6]
[ext_resource path="res://Sprites/Astronaut/LefttWalk0010.png" type="Texture" id=7]
[ext_resource path="res://Sprites/Astronaut/LefttWalk0011.png" type="Texture" id=8]
[ext_resource path="res://Sprites/Astronaut/LefttWalk0012.png" type="Texture" id=9]
[ext_resource path="res://Sprites/Astronaut/LefttWalk0013.png" type="Texture" id=10]



[sub_resource type="SpriteFrames" id=3]
animations = [ {
"frames": [ ExtResource( 1 ), ExtResource( 2 ) ],
"loop": true,
"name": "Idle",
"speed": 5.0
}, {
"frames": [ ExtResource( 3 ), ExtResource( 4 ), ExtResource( 5 ), ExtResource( 6 ) ],
"loop": true,
"name": "RightWalk",
"speed": 5.0
}, {
"frames": [ ExtResource( 7 ), ExtResource( 8 ), ExtResource( 9 ), ExtResource( 10 ) ],
"loop": true,
"name": "LeftWalk",
"speed": 5.0
} ]

[sub_resource type="CapsuleShape2D" id=2]
radius = 13.7784
height = 29.5918

[node name="Node2D" type="Node2D"]

[node name="Player" type="KinematicBody2D" parent="."]

[node name="AnimatedSprite" type="AnimatedSprite" parent="Player"]
frames = SubResource( 3 )
animation = "RightWalk"
speed_scale = 0.75
playing = true

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player"]
visible = false
position = Vector2( 0.383072, 3.24939 )
shape = SubResource( 2 )

GDSC         F   X     ������������τ�   ����������Ӷ   ��������򶶶   ����������������   ������������   ���涶��   �������   ն��   �������Ӷ���   ��������������ض   ��������ض��   ����Ҷ��   �������϶���   �涶   �����ض�   ���������������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   ζ��   ����������Ķ   ϶��   �������������Ӷ�   �������������ض�   �����������������¶�   ��������ض��   ����������Ӷ   ������Ѷ   ���������ڶ�   	   Astronaut      d      �     �     �      �         AnimatedSprite                     ui_left       ui_right      ui_up      	   RightWalk        �?      LeftWalk      Idle     �>      ouch                                           $      ,   	   4   
   5      >      ?      F      M      T      [      \      g      l      m      n      u      y      }      ~            �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4     5     6     7     8     9     :     ;   !  <   "  =   (  >   .  ?   4  @   7  A   =  B   C  C   D  D   L  E   R  F   3YY8;�  V�  YY8;�  V�  �  Y8;�  V�  �  Y8;�  V�  �  Y8;�  V�  �  Y8;�  V�  �  YY5;�  �  P�  QYY;�	  V�  �  Y;�
  V�  �  Y;�  V�  �  Y;�  V�  �  YY:�  �  P�  R�  QY;�  V�  Y�  Y0�  P�  QV�  &�	  V�  �
  �	  �  �  �  &�  T�  P�	  QV�  �	  �  �  '�  T�  P�
  QV�  �	  �  �  (V�  �	  �  Y�  �  &�	  V�  �  �  �  �  (V�  �  �  �  Y�  �  �.  P�  R�  R�  Q�  �  �  �
  �  �  T�  �  �  &�  PQ�  T�  P�  QV�  �  T�  �  �  (V�  �  T�  �  �  Y�  �  �  P�  R�  Q�  �  �  P�	  Q�  Y0�  P�	  QV�  -YY0�  P�	  QVY�  &�	  �  V�  �  T�  �  �  �  T�  �  �  �  '�	  	�  V�  �  T�  �  �  �  T�  �  �  (V�  �  T�  �  �  �  T�  �  �  �  �  T�  �  PQ�  &�  PQV�  �7  P�  Q`    [gd_scene load_steps=14 format=2]

[ext_resource path="res://Player.gd" type="Script" id=1]
[ext_resource path="res://Sprites/Astronaut/Idle0000.png" type="Texture" id=2]
[ext_resource path="res://Sprites/Astronaut/Idle0001.png" type="Texture" id=3]
[ext_resource path="res://Sprites/Astronaut/RightWalk0000.png" type="Texture" id=4]
[ext_resource path="res://Sprites/Astronaut/RightWalk0001.png" type="Texture" id=5]
[ext_resource path="res://Sprites/Astronaut/RightWalk0002.png" type="Texture" id=6]
[ext_resource path="res://Sprites/Astronaut/RightWalk0003.png" type="Texture" id=7]
[ext_resource path="res://Sprites/Astronaut/LefttWalk0010.png" type="Texture" id=8]
[ext_resource path="res://Sprites/Astronaut/LefttWalk0011.png" type="Texture" id=9]
[ext_resource path="res://Sprites/Astronaut/LefttWalk0012.png" type="Texture" id=10]
[ext_resource path="res://Sprites/Astronaut/LefttWalk0013.png" type="Texture" id=11]

[sub_resource type="SpriteFrames" id=1]
animations = [ {
"frames": [ ExtResource( 2 ), ExtResource( 3 ) ],
"loop": true,
"name": "Idle",
"speed": 5.0
}, {
"frames": [ ExtResource( 4 ), ExtResource( 5 ), ExtResource( 6 ), ExtResource( 7 ) ],
"loop": true,
"name": "RightWalk",
"speed": 5.0
}, {
"frames": [ ExtResource( 8 ), ExtResource( 9 ), ExtResource( 10 ), ExtResource( 11 ) ],
"loop": true,
"name": "LeftWalk",
"speed": 5.0
} ]

[sub_resource type="CapsuleShape2D" id=2]
radius = 14.1769
height = 30.3913

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 1 )

[node name="Camera2D" type="Camera2D" parent="."]
position = Vector2( 0, -1 )
current = true

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
frames = SubResource( 1 )
animation = "Idle"
frame = 1
playing = true

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 1.03205, 2.65779 )
z_as_relative = false
shape = SubResource( 2 )

 [gd_scene load_steps=3 format=2]

[ext_resource path="res://Tiles/AstroBase.tres" type="TileSet" id=1]
[ext_resource path="res://Player.tscn" type="PackedScene" id=2]

[node name="Scene Test" type="Node2D"]

[node name="PlatformTiles" type="TileMap" parent="."]
tile_set = ExtResource( 1 )
cell_size = Vector2( 32, 32 )
collision_use_kinematic = true
collision_layer = 2
format = 1
tile_data = PoolIntArray( 458771, 8, 0, 458772, 0, 0, 458773, 1, 0, 458774, 2, 0, 524306, 8, 0, 524307, 9, 0, 589831, 0, 0, 589832, 1, 0, 589833, 1, 0, 589834, 1, 0, 589835, 1, 0, 589836, 1, 0, 589837, 1, 0, 589838, 1, 0, 589839, 1, 0, 589840, 1, 0, 589841, 1, 0, 589842, 1, 0, 589843, 1, 0, 589844, 2, 0 )

[node name="Player" parent="." instance=ExtResource( 2 )]
position = Vector2( 481.751, 251.615 )

[node name="FrontTiles" type="TileMap" parent="."]
tile_set = ExtResource( 1 )
cell_size = Vector2( 32, 32 )
collision_use_kinematic = true
collision_layer = 2
format = 1
tile_data = PoolIntArray( 393236, 3, 0, 393237, 3, 0, 393238, 3, 0, 524297, 3, 0, 524298, 3, 0, 524304, 3, 0, 524305, 3, 0, 524306, 3, 0, 524307, 3, 0 )

       GDST@   @            �  PNG �PNG

   IHDR   @   @   �iq�  �IDATx��[Ar�0l��#���w�pO�n? �����ڃ=�AHF���U.SD�QO�H&��8�kQd~��h�uN��@k���0  ���[Y��!��������I?�j��tzک,K ��z��<�R
�4��_�f���,ŝ�'��Rj���Ə�qq�\����[lGl�Ə����]��N!	�`̘�飔�-���aж-��[]��3�T4A �N�7��A�5D��4M�+C���zNDk�4M����J�p��+���s#`�,������c��Ao�*���@>�x;`-��:�N��ѻ��ӽ{���`K�t�������<���_8pg|�~ɝ��0t`�&mls��ަP��	'Dg�;
Ƃ���g �"���1�o:"%69���!��8����Wи���(���� �� :�0 c�1A)��<��<P߮�Dv�ѕ 03�Ml�ӨWA��TZ�z�F�O�ȩ�����C1� �}�L�cSD�\:ʇ�b�/���V��tn �[� '��>g@u�^c@]� �����,e��Ϗ�����W5`+
b c��.�G��z���ŀG��π�hTݗg��B��9+<_��ql��Jo�Rn-u�4�?R!C�>f8�mkmgC�mqR��	k���=�l����K�%�w��u@]�j�{�6��&�RB�eYF�?�@z��i������~} � �U�L�u�X�Ԁ��*���m}?�[�5��"��xj,����6Ju����bU{ކ+?B��u�M��{E�v}ߛmD��r�nh���� ^�L}ڤF�4(�;_�:`�	���=���.9�E�
"s��.5~}H2@7M�(���پi:BA��Fi�T�5�C����8��f���J/��4h�z=�fS�\�    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Idle0000.png-e0504ecce855981358e175a777018adb.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Astronaut/Idle0000.png"
dest_files=[ "res://.import/Idle0000.png-e0504ecce855981358e175a777018adb.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST@   @            �  PNG �PNG

   IHDR   @   @   �iq�  �IDATx��[A�� �̛�}��>G /��� 9G������EN���f^���u"���W�6p�ĉ'^���\B��s*u1 �M��u @k��[���9�)<	@O���/5�r�̞�� �n7�y���R��x�C#���b'�����)�����Z���:9u	.�^�9�������{�uh�fӘ��� O���m�b�S×������`�>�J��]���Vǀ	I9��lr�����z%P��HI�|i���4&�,�%�?d��-&+`�߳L��SJ�ƑR:��RW�p���-�ؓ�D0  \Zk���1��@�;P2���?�����s8����H��w(��{��E�.0V���-x TU58�A¦4H �
z2���Z\.�ޠT�����k|}}�Ǩrb��6�K)G��Eu���MӰ��@?�o`�p ��c�������x��
'Vŀ0/@B=� 0�����&l���������܊].�����x�r���Q�5k��D@
f�>��h�@Ǩ�
� ��B2��f���oP�=� n�)`���'��
���
 Jx-�~/��#fr�z�OW ���-[��(F�%/����\���LȪ��K|mE8�R*:n.d% ��4M�/���^�;x#�~ḹ�%�Bq�.���P!�s��͔@�,{:b���[�Zk����n�L6�����f�˧AV�+oO1N9]@h�������B��@H���4�;����9�R8>�kl��8�`�E	j��z�F{�'H��e��)�Ga�q�GШ�m۰��g��>�Q� ������ɍ�� ��[p.�����`]>������=�!���/��
pƘ�^`)����1�9 ��
\���S#��*��_�?]�k�嫣�s�+��n`R�`�,�;���dyͷ    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Idle0001.png-1961c4f60250fb7d09e9b65b5701abca.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Astronaut/Idle0001.png"
dest_files=[ "res://.import/Idle0001.png-1961c4f60250fb7d09e9b65b5701abca.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST@   @            q  PNG �PNG

   IHDR   @   @   �iq�  4IDATx��Z1v� ���)|r �I��F>���NUnp�F�#p�ekBB���o��Ӌ#c`�3� ��O<�C0�e�� ���1�`�QJٶs��͸1f�<�� P�%�d9�¿���6��~^J��r�Nk�z��0Ƙ��� "B$H)��S �I��|ỮC�u8�7S ��k �O��Ip�ٶmgۯ��X� ��y����{�mk�{>	RJ���_):����%�o�A��F 	�Q��D  #�֗
O�/�~��~IXl�C��Z�Z���~�p���;F�2�fK@��,Ekm�h@�"	S��n6��L������s�B��`@�"����=	O$5Mx;B��@�5$%�
�H �[�9��<��Rʑw!�i��� ������	^�" ��Z�Lp��r����8	Q�s0��Z\��i(!�����nT�
�0X��wF���YM/����'���p�t�W�����iQ��
u]Ӻw!��@Lh�	^Q��@�ۻ�"a|8���� ��aU���CK�����������<�i�\.�ݪy�Ҿ���dH���o+%P���S�0RY����ڟ��^8���% �7�g���H�B�蓖P��2V�N\$�S;8����V�O�N\$! �v�X�Rj��z���5��$N[�����@8�h�UU�j�����\ȶiS�P�D'HS蓢��e�
�	�Z��&���Z@޾dT��J�����D6�e��aIw��g���������L����MJ�d�BĨL�/�Q�l.
���?���v�i�xU�<�
�8�6:�5%(ׄ)�z|�Ǘd�*�z�[�{�,�[���m�4���#�a���k�����n7����___8�N8�N��������+��� �;�n�����`�RF)ezS0SPJ���G����Ʌ�!���{_���r����Y��^� �ik�B�߈��l,����%�9' |U�EBq���w6��:#	�<$�*B��8eySQaI8L̔�����-�ɶzTp0�ƣ?�.��  j��Z[�D    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/LefttWalk0010.png-161863a53c2edd5bca93e86458e07945.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Astronaut/LefttWalk0010.png"
dest_files=[ "res://.import/LefttWalk0010.png-161863a53c2edd5bca93e86458e07945.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST@   @            }  PNG �PNG

   IHDR   @   @   �iq�  @IDATx��[K��8}���=��kL�jo��1{�W N�mGg/L�d!�b"�/�0�����J%2��o������hG��� �(�@D���c�蓅��D����� ��k��5H>Ē�\.��q��{E�Z/�6M��NJ	@D�I�AkmI� �� |��8bG\���k�� �m�� �ā��ð���դBB b�t�w]�a�y��Akͳ�$�7	��=�_ !1��	���?� �}}/y|��O�<��ū��4M���'��.�9���Hr1�&쳔i������^d ԙqW������{�Îr����%���L�gnw͞ɳH}�^F��i����$ �N�)�|�OK^k��P\ ,���0w�v���/ �-�7$	�=r���n����aC0rD�(2L�t���~�� ���i��;+�
	�CD���{^Z̤/�}�3�a��!l���@�1�-Wr��m�.�c�m[@m��s�AZ�d�mq߯��@��b�:�E\  � ��'��&����o�q�U�
�:#�:l��]�;A�	�g}ģ�X�og��(�H�n�`*�b��{圗zz�,��=9�o��D�;TJ��TH�a�10��i�+��h��Lt�D(�����l�< ����`����
������DpI_�WÀ�i�"g-�0C��W�T���p�uh�Ɩ�.����"6�~M0'���]�gQX  �<`I ̿?�y��?Y�$�?��x-�y�7�ō�+ #���@���"�V��vƘ��G���4��<�|J�0b�u$�~�t�����G���$B���B��ٽ� ���E)���0ڶ-�ybE� ��Ox���Q$v�L�۞�(ʅ��Z�H[Q��VJ�^GF4j(�k�̂��
�R��Ƙ"�d� xд�Rʒ�3P��p��{��%r��ɻAא�9��y[�Mӈ�B��;r���O���w���Uds����J�v!�t�?��tF�s�$@��9GqC�,H`-����/H��K�<��.�q/�|��*4�[��    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/LefttWalk0011.png-ed1a9c6ceb497b1ac498819ccb80fe66.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Astronaut/LefttWalk0011.png"
dest_files=[ "res://.import/LefttWalk0011.png-ed1a9c6ceb497b1ac498819ccb80fe66.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST@   @            `  PNG �PNG

   IHDR   @   @   �iq�  #IDATx��[Kr� }��)|r y��r� �u�h卼�F�#p��,�&�,�35~U����~��� <���1�XzE��  ~0��h�5����M[�9�f\k�^��� ��� �5�������p�z-	R��gJ��I�"@k�o
� �4B� �I(\�a�08�N7SU �i�pL(Ip�S�]�-����T� @�yڂt]g�{	.	RJ�_9:�����7@#1�#�.(�[2 P� ����S���hyt	���eJ�(�t�w3�-�_�1�ܠ��	�������u �[�,�&3�bJ�<i߉F�)��C��`@�2���n�=	O$�m8+BL��D���-�C$ �%�\�		Fx)�L��`�4��� x}}��O�'$P$*��Np��z�.�N[�d� `Rp���miCd@���vV�
�4�?V��t?�l�jF�m�]�W�.b��S���0kZU�F�4��6�[HI�5�OTz� ����H�B���Y���������$`b���e� �4�����k��[5O`� M�wb��������J�h�k�O_:̅\03������u��������^s�Fi_`ܴ�����rtb#k��hg�t�?9:����LڽR	�}�OިqA�CN��i+�X@]�3��	]ס��Y�>p�Ĩ��B�B �a�$�MQ���W���`,[̉�NM�h?
2���m�}(ya���e��aYW��g��H������L���-MJ�d�BĬL=���D����;����˴��*�����{I�Kx`c�)A�&L��g�W�bI�r������n-���C۶��܇�.~�������n�{�?>>p>�q>��������3��� �=�n�s����m��	}��if����)��!!Ĳ����+E�^`����s�6�\��p��	,�� ���*�8���;��$p�-�U2�]^��Q�����|��~.��_c,.p���p0��-���Ja���q    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/LefttWalk0012.png-6ac009b98e9e855e8bd10d5bfa5b4ce6.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Astronaut/LefttWalk0012.png"
dest_files=[ "res://.import/LefttWalk0012.png-6ac009b98e9e855e8bd10d5bfa5b4ce6.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST@   @              PNG �PNG

   IHDR   @   @   �iq�  �IDATx��ZA�� }��72���s����i�g�g�/b��f�~^U*)���h��� o���o���e"�Ԝ �O�g �����ڎ�0'�Ҋc��L� h��d%b�_.�݁�<�ϱ"4M���,K�$K	`�1/�� !B"4McI� �E(�\��<c�g\�ח�H) }��}Bq'Hā�ʎ�;>�j΢� �̓WJaGk�{pEh�����:��9~�w�c���I?VL "\���D �� ��cɓ��Z�uKX%�@,˒�?]�n��W�qj��q �R�e��?�иXd�7�y�wCZ��i��aW�����%���H۹�yi����x��TR `������%OpD�䛦�p�. ����	���nɿ�
 <Dp��� x��<Ϙ�	���I��n7,�Bg�U ����;A��Qط�����q1�F��eY�
GQB�M�W������+Bj����6�����\4G��!~�H�=���w}�{�!h�M��� �p�2A�͎E�/��Z�M�jT���� �����&|}}��3�aN6��)��a������͛5J)�u]�Y50����H)m:\�,��r��@��3_��RJÀ���T.w|��J!h�Ê��^����R�*���<��������}N}z~x�@�� �i}(��&V�y���g��{�h���I�`8	��i���^5?~�,�̘VT)���k���[M�+��0�u�R��IJY����z�8��nS����j����hD[ �77s"E���� �� �Q��Pڂ��GV��
c���A�%OB��{(:o6��h���8g�]����U����$'���<�=���E�V/���	�i�l�w�*��P#�����@������[� %���ۺ�9B��Rt-[9�t=@!��H��C&�E�#
�j�ƷmE�;V7�@D�ME���>��>�i�/����G���W+���<�5���V�X��t[�8��è* �����#��>Y����~��4M����*��a�h���F��h������! ��cQI��[�&-��wAmo|,S|�f��j0}�{+D����]�Ju�|ȥ���~s|�U~�����Rc�#kw��� 1#tG�}9��=��~箾�rj"��0X�Y7Z�%� �ƥ�����Z��ȟ����;��
�UR���^��*�e9RMx���    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/LefttWalk0013.png-62ebb1ad133e80aa70416d55b0d2974e.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Astronaut/LefttWalk0013.png"
dest_files=[ "res://.import/LefttWalk0013.png-62ebb1ad133e80aa70416d55b0d2974e.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST@   @            _  PNG �PNG

   IHDR   @   @   �iq�  "IDATx��[Kr�0l��F��ؓs� �OeoΑ�{� p��G����,��@Ԍ��2�XV��I�x�'�c��~W/�'K�r�@�q�J) @UUt)is
���s��"Y?W7\�sm��۽�˲��)% ��: ������a@Q��9�6���D��A����G��8�ϣ�p����d-{���}oΕR�\.9�bS����]�G���[{�� � �B�6����ШN�)�#�6X E|�y:ֱ��sa�?�EQ����?d�5����f�4dK�~�Z"���h�iK?�񔷴��ĥ����7b�$���+@"���� ��,1��A ��v{�&�a̼=�2	y B`�2�C�___ ___��EA�BH0+�E4�A�N'H)q:�PUU�*�  ���(4{oP��� y��<4M����-���Ǫ
��� @T�� @��wR=,�~�Kb_��GJ< �h���R�5���=��Y pȯ�t9�
h�=na��%��l�q�[ ��:���B�+�����~ ��
��W�<u�p��Sb��i����X }f	����a��;��2B a�^�s���� ŬpP�f����m5M��u Q*���;�ckJ)s�J�Y��b��cB�oJ)m[�V7�E )����傺��y@�N��jn0� /eY��&;��B�v���D*����F����ﳥ��h����)����16�c�۶���	0G܇��C�n�V/��!{%�՗c�¤Pg�_#�� ��B�R !�4"Ы����� Ѷ-����(��g2vS'S���e-����2m������ 4��c�ϧ���gs�"$���0Φ)*mI*�|��F�$�!� ]�9���6M�!�_��X@��&�C���4��>����$�.�u�\P�Z���D1`�B�Q����:�������� �Ww���7$�_�g�#>�,��S�Ñ2[�^���S �uݨt����A�#W����^�T�b����ă#�o�p(�y�_�_bO�c���    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/RightWalk0000.png-45864c869da2abd76cf8b2890ace6495.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Astronaut/RightWalk0000.png"
dest_files=[ "res://.import/RightWalk0000.png-45864c869da2abd76cf8b2890ace6495.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST@   @            m  PNG �PNG

   IHDR   @   @   �iq�  0IDATx��ZA��0l%�#������`�)���q����� �G9��!���T�U[6�Vk4� �x�'��!�t_�qM���@�����a  TUE%�cN�q0B$���X|6����N�eYn�CJ	 8�N@"�u'�㈢(l!�o�!�L&·�Z�I^)���[m�O��xIֲ��R�À����+1��=\�9�[�|iO#�4�!�_h��&���>�Fu+n�?y��(�[���p���s��|2��0m��?[�,�$֥���`�|l��y������40�Ɨ<���R���1��မ vH����g" ~��c��G��f�=mv��foG�t�3� �� [�q�	�A����~~R��=�F�DH0l&E��^__ m�j,�X����(4;���?$�S�UUEO���Any;+$'�Q߷�J�S<��y`�\[Q�����@p=`�5�x�� ��ȷmڽ`�v�-�A�K�D4l��� p:��Ƃ�!�|||,?d#���H][���k���WT����C(����ѷb@d���Ep4��	[�CL<�̼�8ϽS��3�5;�۩5�(�����Emۢ�:����2A(� ��%C��C"�m�Ð�"�%�$���R:bn$�RJ�,K�}?}�ꆶm�V%N�W�@"H)g��RJ35Rn��r�(��T��; S~P�%����|6�#�yt�߿̱�	 ��<0>8���('N�~�䧚6L��0$�<������R�ZC)��x\H����Ra�pk�b�4I���	�G`E`J�7Z�����}pW ،��;����� �D��a��ʒ&��EI�[c6r_�(ht�u�<!�����k��^7M�q-��^w-��Y;�g@�+RE|r� ��S��D�`�2��E� hq��|�c!�]��۸1��ߥpLJ�%�նu�[�lS�hY�~�z*<�c�r
l: �,s�����7%]�F��k�uM��Jl+�$E�) .�t���"v�8u0"쁋l�$)WrKg�v7��Cwm�Kz�    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/RightWalk0001.png-a85e0db822c33636d654981a4bb64b3d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Astronaut/RightWalk0001.png"
dest_files=[ "res://.import/RightWalk0001.png-a85e0db822c33636d654981a4bb64b3d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST@   @            [  PNG �PNG

   IHDR   @   @   �iq�  IDATx��[Kr� lfr#io�WΑH�T��9@�7�N��0�a��C�w�ʲ,c�y?�x�'�c��~�̸'K�r` ��a�Zk @UUt���90c�]������.�"������Q�eY���� ���DX�h�8��{E���"�CJ�&¯�z�$�u������`#�K��[��仮��Zk���]�H)��P��#���[{�� � �B�>yN��Ш��1�#�6X E|�y�1��sa�?Y�EQض��k�p��f�4����H14Dුdi� W�ܔ7��s�K)���o�{� x�� ����ۃ�<w���z(7���pL�!�J�@�:�����<ai|}} |��)
!�XA�(�����X���t����	UU%��Pz*��8�-ʲ� �������Rj�R�/~��Px� 
� �*~ y������a�$�*��B���� m��[�F�4��g�)�~ ��!CN��u����֒�Bg�q�[��uRa�,%�����O��4w+��������Sb�`h���l�� ��c	����ǰ ���9�Ι!��~o�������cVxQ������mM��u I*C� ���CkZk{p����[1�Rc�>� ��Ʒ��n�� RJ����u]�t�F�kn�C���,M�uQ��g!DP;��S����ח�QvAA-����	@����܊�AЈ��14�C�۶M��	0E<���C�n�V/�M!{%�՗S�BV���	�V ��K�)��RZ��Y��Z�m[1�ŝ{�@��d�Nr�� �>�1��j�9 l�9
!�y�c>���#��f�] �O��6MQiK�P1�74�'�b��PJ��m�6B"�#�6ү���KM$B�<!�i����pn�\@)5��V�#y�)l](9��!N���i:g��0 p���n�{�r?��d���<����=���Ԡt�Y������\u�Kc{�S-��F����A¡,�;|O�%Q�    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/RightWalk0002.png-950de974e3c5d168cb322a7af890a906.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Astronaut/RightWalk0002.png"
dest_files=[ "res://.import/RightWalk0002.png-950de974e3c5d168cb322a7af890a906.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST@   @            E  PNG �PNG

   IHDR   @   @   �iq�  IDATx��ZM��*�x�n����s�9A����f���xm�"(*8S��UYIA������o����◞k"�ܲ��	0 `LX~�5 �,K��u�w`��  KD�u��XJ��7�ch�W��(6��� t]d"��>�	�8BJ��~OpJ�l$��zB��Àaжmpn��o��=���`�k��|>�\�EJ[횂Ox.��.��$6�Ĺ���9�;�	�]�r�[ ����� ���UϕvĪ�]�jOV@)�����"
�	�D�<g�0xHb�~#�	�הd��� i<��f\p�}^<#ه�h�� 7$��ǂ �2Vk�Plv�3��>B��q��u� �r��2��Jx�Q'���i������W����`Z�M�����r!P>>>  M��M,	.@�IJi�g��(�#^�|@۶(�2y|
RJ{��0i����`0���������`��K� ��,Q1�z�Ce�;�O�J�_;-n�Մ�v��ξ.5}W�uv-8��ʏEl��B�ǋ�ϝ��tE�G�Z���{���. �WRO�S"uI�[�^���(�҂rz%��s���P�5��r�,�mۮv���3Mp5 ���|�O�w]G�����g��8X�ϫ$�����8c�^���ֱu���� ���~=N)�����=�
�g�t���}0=�4M�x��h�)Ev��P��u �"Z�ͳ�R
�4M��Vq&�?A��_.@a��H�ǘ�o%`oGCp�D�N۶���@������jU��M�Pct�W�o���I�jAR|�Lk�	B��9B)�q t]g��Z[�H�#Δp� _RC�ʡ����3�F�u�h�s��5��J�9���x0>x�3��E�ox�Q��̽����0x��Sh��G����s��m�*���s�[܋A�T���D�2���F�+)	J)K�n��M�@�|E�q�C��	�ED۶��B�����s�)T��s���R
u]�?Izq��5>�52g��i�3���mks���O�%��^n.����On���|̽��\~ ����I2��&TUu�H2ydnQ3���q�܅UǨ�k#�\���e�]����x6�c��+��:� &���rw��R/K �������뾣*� ��_D������v�����$��oq�� \//��[�x��ϓ�=v�q���h���
�6F�����I�p�8]f� *n����Zߦc#�Y�$�#�M��B�����'����ƌ`r�u� �H�k9U�:�� ������    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/RightWalk0003.png-53b27f828762bfe35fe68b83438b86a8.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Astronaut/RightWalk0003.png"
dest_files=[ "res://.import/RightWalk0003.png-53b27f828762bfe35fe68b83438b86a8.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  [gd_resource type="TileSet" load_steps=9 format=2]

[ext_resource path="res://Tiles/AstrobaseTiles.png" type="Texture" id=1]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 0, 0, 32, 0, 32, 32, 0, 32 )

[sub_resource type="ConvexPolygonShape2D" id=2]
points = PoolVector2Array( 0, 0, 32, 0, 32, 32, 0, 32 )

[sub_resource type="ConvexPolygonShape2D" id=3]
points = PoolVector2Array( 0, 0, 32, 0, 32, 32, 0, 32 )

[sub_resource type="ConvexPolygonShape2D" id=4]
points = PoolVector2Array( 0, 0, 32, 0, 32, 32, 0, 32 )

[sub_resource type="ConvexPolygonShape2D" id=5]
points = PoolVector2Array( 0, 0, 32, 0, 32, 32, 0, 32 )

[sub_resource type="ConvexPolygonShape2D" id=6]
points = PoolVector2Array( 0, 0, 32, 0, 32, 32, 0, 32 )

[sub_resource type="ConvexPolygonShape2D" id=7]
points = PoolVector2Array( 0, 32, 32, 0, 32, 32 )

[resource]
0/name = "AstrobaseTiles.png 0"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 96, 128, 32, 32 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": true,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0
1/name = "AstrobaseTiles.png 1"
1/texture = ExtResource( 1 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 128, 128, 32, 32 )
1/tile_mode = 0
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": true,
"one_way_margin": 1.0,
"shape": SubResource( 2 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
1/z_index = 0
2/name = "AstrobaseTiles.png 2"
2/texture = ExtResource( 1 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 160, 128, 32, 32 )
2/tile_mode = 0
2/occluder_offset = Vector2( 0, 0 )
2/navigation_offset = Vector2( 0, 0 )
2/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": true,
"one_way_margin": 1.0,
"shape": SubResource( 3 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
2/z_index = 0
3/name = "AstrobaseTiles.png 3"
3/texture = ExtResource( 1 )
3/tex_offset = Vector2( 0, 0 )
3/modulate = Color( 1, 1, 1, 1 )
3/region = Rect2( 96, 96, 32, 32 )
3/tile_mode = 0
3/occluder_offset = Vector2( 0, 0 )
3/navigation_offset = Vector2( 0, 0 )
3/shapes = [  ]
3/z_index = 0
4/name = "AstrobaseTiles.png 4"
4/texture = ExtResource( 1 )
4/tex_offset = Vector2( 0, 0 )
4/modulate = Color( 1, 1, 1, 1 )
4/region = Rect2( 128, 96, 32, 32 )
4/tile_mode = 0
4/occluder_offset = Vector2( 0, 0 )
4/navigation_offset = Vector2( 0, 0 )
4/shapes = [  ]
4/z_index = 0
5/name = "AstrobaseTiles.png 5"
5/texture = ExtResource( 1 )
5/tex_offset = Vector2( 0, 0 )
5/modulate = Color( 1, 1, 1, 1 )
5/region = Rect2( 224, 128, 32, 32 )
5/tile_mode = 0
5/occluder_offset = Vector2( 0, 0 )
5/navigation_offset = Vector2( 0, 0 )
5/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 4 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
5/z_index = 0
6/name = "AstrobaseTiles.png 6"
6/texture = ExtResource( 1 )
6/tex_offset = Vector2( 0, 0 )
6/modulate = Color( 1, 1, 1, 1 )
6/region = Rect2( 224, 160, 32, 32 )
6/tile_mode = 0
6/occluder_offset = Vector2( 0, 0 )
6/navigation_offset = Vector2( 0, 0 )
6/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 5 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
6/z_index = 0
7/name = "AstrobaseTiles.png 7"
7/texture = ExtResource( 1 )
7/tex_offset = Vector2( 0, 0 )
7/modulate = Color( 1, 1, 1, 1 )
7/region = Rect2( 224, 192, 32, 32 )
7/tile_mode = 0
7/occluder_offset = Vector2( 0, 0 )
7/navigation_offset = Vector2( 0, 0 )
7/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 6 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
7/z_index = 0
8/name = "AstrobaseTiles.png 8"
8/texture = ExtResource( 1 )
8/tex_offset = Vector2( 0, 0 )
8/modulate = Color( 1, 1, 1, 1 )
8/region = Rect2( 192, 96, 32, 32 )
8/tile_mode = 0
8/occluder_offset = Vector2( 0, 0 )
8/navigation_offset = Vector2( 0, 0 )
8/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": true,
"one_way_margin": 1.0,
"shape": SubResource( 7 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
8/z_index = 0
9/name = "AstrobaseTiles.png 9"
9/texture = ExtResource( 1 )
9/tex_offset = Vector2( 0, 0 )
9/modulate = Color( 1, 1, 1, 1 )
9/region = Rect2( 224, 96, 32, 32 )
9/tile_mode = 0
9/occluder_offset = Vector2( 0, 0 )
9/navigation_offset = Vector2( 0, 0 )
9/shapes = [  ]
9/z_index = 0
10/name = "AstrobaseTiles.png 10"
10/texture = ExtResource( 1 )
10/tex_offset = Vector2( 0, 0 )
10/modulate = Color( 1, 1, 1, 1 )
10/region = Rect2( 339, 160, 2, 2 )
10/tile_mode = 0
10/occluder_offset = Vector2( 0, 0 )
10/navigation_offset = Vector2( 0, 0 )
10/shapes = [  ]
10/z_index = 0

     GDST�  �           �  PNG �PNG

   IHDR  �  �   ��#  �IDATx���Mv�Ț��=�#�����"z �����5�^H-�\��p ��O��y��SU�%D�Yz��"                                                                                                                                                     E���u�އ|���o	���?_~���_   �  
#  濎~!��/
t��l�ϗ��� ۶������_��Զ��� 1)4��F~��u�믿�@ ���M������B��߫,O���.����GJж��g�����������K I�)}���v>��~9p�G��UU�����0��?��*� x
!��in�������$FB�T�w~�\'�0�D �\.���c����C�>�C���$��l8�����\�oo��/��Kf��ry�1�J�M����{$��F4�Rk {5��?J3;�O�`,� 8K����	 �ؽ�,�v��1q3H��___��Ν_7��~!�h�g`xsG��Ѯ�`JV`۶��� �Av���'��+��@z7��~~]��b�F͟��(�ã^�?��% ��a��K�G��? ����x��r��G����'�B�p|����E�Q��'	��(����_~�? �d ��j򍫿cx���a��L�����!�C�p\L�4�B���;0��-$7pno߉9�WM��߯�-�HR��`Y4����¯ I1��$5&��u�g�E۶å����A����eF͉pH��z`UI��,�R��ե�|��/�����o|�?��7M3n����!����d��=~c�m-��n�WUU���Rk g�����C]ױ�C4��? v�Z \d����e��%)1��#$1�_����=�l;
�]�Y2���8� �s� HA����i9�9 � � 8~#����"�#�ƨ v��]�P(��ݥp7��-ߋR�=�M<���z`w)4�Sۺ����h��� kI���<���tz�L>;�o	��5	����9���K� V# �F�7wĂޟ?B]���2���@x�s��� k �W�E�ow�_Dt�K?�R�����-}�6B��P�����;��7��s�O��o��9 �5oD;��|��H���`�[��5�o�sp��p�`������L&ª����WA�@Z��ECA�4����?>#�s��? R# &�|>���|s�hI���ܜ�7�/r  �J L��|.��9Y2�/h� H� �����яO�s�nh� H� ���i�$xĞ#��gΨ ��_ dN� ;�D�SN��1�� "��0�kɆ�����&{ܮ6��Pg R! �}���� H� w<3�o�9   LXcΟ�@�@�����!��T��"��2�� x;��q�����g��	 �@ L��s��~�����8 �3����͜? J$ R,s� (� ��G��m��?~-9�����j�||lr< �bLf��sя�H��^.���� �L`F�_G?~#� ű�����я_�0�	 ����\ӕ�q���( .y��R����q� �A��w�1�k5�`i 8�k a�Q/ �`����g]�!�����e��޶��Ư���/�v���m�?����$ ���_� ޑ ��q������x�f����4?��k��憄w=~߰�҄���O��؟ ���X��e�-v�(��G+��X� ��qT�u��~�����"K������o��]���"L��������? �spƺ�{��y�z�܏������i �4ۄM<��歔�璖J? 6��TUU���Զ�{U���k4�i�i�o�w����ۂ%ط>~J? 6��Ȓ����j,��K�U���`��p�m��_�;��5���'n�x��g���`e�L�8~yJ? ֥Lܚo�ό]����/�~� lC��꺾�Z��/�ƌ��� �& &�뺗ƭ�C��r��(�BW���y׋5��9�? � 3�Lx�qs���~� ��5�y說
m�^���4��}wg/ٷ>~�J? V�LT,ͽ��������z��A����x� lK����]�7��i��������Y^|��g���`#�mٲ9~�J? ^�LP����7?��]������c{O4Aow��m_��vO[|�s: ���ث��^�?w�@ ��LHf�5?���!�t:]���&n�y����[��_(��`?`&�n�Շ�� �� �/`�p3n~���&'Ҋ]���ѧ����?�4����؇_# ��5�  ��N���^���:�O�v�g`�+�}�Wl��t���z� ��0��H��e�n' �N ܙ78���/־?�L;������ǳϤ�K`ɳXF �D�-����j�? �r0p�� @8�xiwnǔq�����a�h. 8� �0@8X� >�VUu謹�_cIBM  ;�  F�y�	��6�=��f&@:4�����_ �����B�i���{4�Sw����  d����_��4����&p��6y�� nh !Kn������1� c@H����mß�˿����_ Q@�@�� �A	{5�Y� F P�u�KÞ�>l� �& B�	�u]o�J x���uUU��mg��m�晽�(��u�g=υ�� �,0��t���ۇ��i�����	`�2k� �@HL����7��}�������{u]wm۾tG1 �E���, $����^�P�	�� �0@8X�_��߂%�k~� �  @a4�p���1�pC P �o�b���cό}�m)i(� 	ް�4 �B 	���������~ ,�@ ��h �`�ݺ��*/z7�	\��M�-@�4�  �� ����&���{Om��K4� ��  F�y�	��6�=�(�25�� �4����޽����}O���2�h��/�@@H�M8qw��H� 74���%7o|}}�����1 ��z_۶��?�����_��( d��� ֠����,�� (� ���a�u]���(�L��z�W��p ����*�m>>>�~a�4��@a4�����=�y.���� 8f�1 ��fo�>�5Msw/�~'M  S4���X� �� Bb���߾�����4M,��ܫ�k���;�x/@�T�u�k`�ч�{�_lg�a<�Nׯ7� � !K�t���O�(և�q�7}7y�V�ʐh \ P l<��o���|�\Vy އ �0��c}���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         �����K+�+    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/AstrobaseTiles.png-fcdfec99169a7578a2b19e2afd2bae7b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Tiles/AstrobaseTiles.png"
dest_files=[ "res://.import/AstrobaseTiles.png-fcdfec99169a7578a2b19e2afd2bae7b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )

            GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Node.gdc"
 [remap]

path="res://Player.gdc"
               �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG	      _global_script_classes             _global_script_class_icons             application/config/name         Test 001   application/run/main_scene          res://Scene Test.tscn      application/config/icon         res://icon.png     debug/settings/stdout/print_fps            display/window/stretch/aspect         keep   display/window/stretch/shrink         @)   rendering/environment/default_environment          res://default_env.tres    GDPC