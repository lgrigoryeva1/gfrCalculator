   M S B A M L   `   `   `  ����H  DgfrCalculator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:gfrCalculatorgfrCalculator  5   	       gfrCalculator.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:gfrCalculator     5   	      m_Title  � Title#  �   5   	   $	��350��6+   $	��525��68   .��5	      � .+�5
   
   o� .@�5      m� -   5         m�Name$ menuLanguage��5        
m_Language#���  6-   5      �� 5   
   $
��Left=�6   $��	44,49,0,0q�6/   $
��Wrap=�6B     m_Height#���  6V   $	��Top=�6x   $��22��6�   $��59��6�   $��16(�6�   �� 5   
   -   5         ��Name$ heightValue��5      $
��Left=�6'   $��23��6B   $��
127,46,0,0q�6N    �� TextWrapping$
 Wrap=�6b   $	��Top=�6v   $��43��6�   .��6�    =� ErrorTemplate 5      �� 5      .R�5      �� .+�5      ��  ��Name$ textBox��64   �� 5      
���  ����6$   �� *[0].ErrorContent+6F   5      5      .��5   (   ��5      �� 5       �� Path$ Height�6    �� UpdateSourceTrigger$ PropertyChanged=�6(    �� ValidationRules 5      -   'gfrCalculator.StringToIntValidationRule  5      ,  &System.Windows.Controls.ValidationRule	   ValidationStep$	 RawProposedValue=�6:   5      .��5      5      �� 5   
   $
��Left=�6   $��	44,99,0,0q�6/   $
��Wrap=�6B     m_Serum#���  6V   $	��Top=�6w   $��16(�6�   $��73��6�   $��87��6�   �� 5    
   -   5        $ 
serumValue��5       $
��Left=�6&   $��37��6A   $��127,104,0,0q�6M   $
 Wrap=�6b   $	��Top=�6v   $��43��6�   
 J� RenderTransformOrigin$
 0.473,0.528&�6�   .��6�    5!      �� 5"      .R�5#      �� .+�5$      �� $ textBox��64   �� 5%      
���  ����6$   �� *[0].ErrorContent+6F   5&      5'      .��5(   (   ��5)      �� 5*      $ 
SerumValue�6   $ PropertyChanged=�6,    �� StringFormat$ {0:#\,#}\,-}��6R    5+      0   *gfrCalculator.StringToDoubleValidationRule  5,      $	 RawProposedValue=�6=   5.      .��5/      50      �� 51   
   $
��Left=�6   $��
175,49,0,0q�6/   $
��Wrap=�6C     m_cmUnit#���  6W   $	��Top=�6y   $��16(�6�   $
 -0.083,0.438&�6�   	� 52   
   -   5         	�Name$ mgButton��52        m_SerumUnitOne#���  6(   $
��Left=�6S   $��175,108,0,0q�6n   $	��Top=�6�   $��16(�6�   	� 53   
   -   5        $ 	molButton��53        m_SerumUnitTwo#���  6)   $
��Left=�6T   $��246,108,0,0q�6o   $	��Top=�6�   $��16(�6�   $
 0.538,-0.721&�6�   �� 54   
   $
��Left=�6   $��
44,255,0,0q�6/   $
��Wrap=�6C    	 m_GFR#���  6W   $	��Top=�6v   $��20(�6�   $��97��6�   $��32��6�   �� 55   
   $
��Left=�6   $��	44,19,0,0q�6/   $
��Wrap=�6B     m_Header#���  6V   $	��Top=�6x   �� 56   
   -   5         ��Name$ gfrValue��56      $
��Left=�6&   $��111,186,0,0q�6A   $
��Wrap=�6V   $	��Top=�6j   �� 57   
   $
��Left=�6   $��219,261,0,0q�6/   $
��Wrap=�6D    	 m_Result#��� 	 6X   $	��Top=�6z   $��14(�6�   �� 58   
   -   5         ��Name$ calculateButton��58       
 m_Calculate#��� 
 6*   $
��Left=�6R   $��
44,177,0,0q�6m   $	��Top=�6�   $��75��6�   $��28��6�   6�   �� 59   
   -   5        $ resetButton��59        m_Reset#���  6&   $
��Left=�6J   $��160,177,0,0q�6e   $	��Top=�6z   $��81��6�   $��28��6�   6�   �� 5:   
   -	   5         ��Name$ resultLabel��5:      $�� ��6%   $
��Left=�60   $��175,255,0,0q�6K   $	��Top=�6`   $��39��6x   5;      5<      