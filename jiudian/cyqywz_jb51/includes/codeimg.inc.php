<?php
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . "GMT");
header("Cache-Control: no-cache, must-revalidate");
header("Pragma: no-cache");

//��֤��
error_reporting(E_ERROR | E_WARNING | E_PARSE);
$verify=new verifyCode;

for($i=0;$i<=3;$i++){
			$zz=rand(1,9);
			$code.=$zz;
}

setCookie("CODEIMG",$code,time()+3600,"/");

//$code=$_COOKIE["CODEIMG"];
$code=strrev($code)+5*2-9;
$code=substr ($code,0,4);



$verify->vCode($code);
$verify->Output();

class verifyCode
{
        var $Noisy = 0; // ���ŵ���ֵĸ���
        var $Count = 4; // �ַ�����
        var $Width = 60; // ͼƬ���
        var $Height = 18; // ͼƬ�߶�
        var $Angle = 0; // �Ƕ�����仯��
        var $Offset = 0; // ƫ������仯��
        var $Border = 3; // �߿��С
        var $imgData = "";
        var $Graph=array();
        var $code = "";

function vCode($code)
{
	global $code;
        $this->code = $code;
        for($i=0;$i<strlen($code);$i++){
                $this->SetDraw(substr($code,$i,1), $i);
		}
        
}
        
function SetDot($pX, $pY)
{
        if($pX * ($this->Width-$pX-1) >= 0 && $pY * ($this->Height-$pY-1) >= 0)
        {
                $this->Graph[$pX][$pY] = 1;
        }
}

function Rnd()
{
        mt_srand((double)microtime() * 1000000);
        return mt_rand(1, 999)/1000;
}

function Sgn($v)
{
   if($v>0) return 1;
   if($v==0) return 0;
   if($v<0) return -1;
}

function SetDraw($pIndex, $pNumber)
        {
        // �ַ�����
        $DotData[0] = array(10, 1, 80, 1, 80, 100,10,100,10,1);
        $DotData[1] = array(30, 15, 50, 1, 50, 100);
        $DotData[2] = array(1 ,34 ,30 ,1 ,71, 1, 100, 34, 1, 100, 93, 100, 100, 86);
        $DotData[3] = array(1, 1, 100, 1, 42, 42, 100, 70, 50, 100, 1, 70);
        $DotData[4] = array(100, 73, 6, 73, 75, 6, 75, 100);
        $DotData[5] = array(100, 1, 1, 1, 1, 50, 50, 35, 100, 55, 100, 80, 50, 100, 1, 95);
        $DotData[6] = array(100, 20, 70, 1, 20, 1, 1, 30, 1, 80, 30, 100, 70, 100, 100, 80, 100, 60, 70, 50, 30, 50, 1, 60);
        $DotData[7] = array(6, 26, 6, 6, 100, 6, 53, 100);
        $DotData[8] = array(100, 30, 100, 20, 70, 1, 30, 1, 1, 20, 1, 30, 100, 70, 100, 80, 70, 100, 30, 100, 1, 80, 1, 70, 100, 30);
        $DotData[9] = array(1, 80, 30, 100, 80, 100, 100, 70, 100, 20, 70, 1, 30, 1, 1, 20, 1, 40, 30, 50, 70, 50, 100, 40);
        
        $vExtent = $this->Width / strlen($this->code);
        $Margin[0] = $this->Border +$vExtent *$pNumber+ $vExtent * ($this->Rnd() * $this->Offset) / 100;
        $Margin[1] = $vExtent * ($pNumber + 1) - $this->Border - $vExtent * ($this->Rnd() * $this->Offset) / 100;
        $Margin[2] = $this->Border + $this->Height * ($this->Rnd() * $this->Offset) / 100;
        $Margin[3] = $this->Height - $this->Border - $this->Height * ($this->Rnd() * $this->Offset) / 100;
        

        $vWidth = intval($Margin[1] - $Margin[0]);
        
        $vHeight = intval($Margin[3] - $Margin[2]);
        
        //��ʼ����
        $vStartX = intval(($DotData[$pIndex][0]-1) * $vWidth / 100);
        
        $vStartY = intval(($DotData[$pIndex][1]-1) * $vHeight / 100);
        
        for ($i = 1 ;$i<=count($DotData[$pIndex])/2;$i++)
        {
                If($DotData[$pIndex][2*$i-2] <> 0 && $DotData[$pIndex][2*$i] <> 0)
                {
                        // �յ�����
                        $vEndX = ($DotData[$pIndex][2*$i]-1) * $vWidth / 100;
                        
                        $vEndY = ($DotData[$pIndex][2*$i+1]-1) * $vHeight / 100;
                        
                        // ������
                        $vDX = $vEndX - $vStartX;
                        // ������
                        $vDY = $vEndY - $vStartY;
                        
                        // ��б�Ƕ�
                        if($vDX == 0)
                                $vAngle = $this->Sgn($vDY) * 3.14/2;
                        else
                                $vAngle = atan($vDY /$vDX);
                        
                        //���������
                        if(sin($vAngle) == 0)
                                $vLength = $vDX;
                        else
                                $vLength = $vDY / sin($vAngle);
                        
                        // ���ת���Ƕ�
                        $vAngle = $vAngle + ($this->Rnd() - 0.5) * 2 * $this->Angle * 3.14 * 2 / 100;
                        
                        $vDX = intval(cos($vAngle) * $vLength);
                        
                        $vDY = intval(sin($vAngle) * $vLength);
                        
                        if(abs($vDX) > abs($vDY))
                                $vDeltaT = abs($vDX) ;
                        else
                                $vDeltaT = abs($vDY);
                        
                        for($j = 1;$j<=$vDeltaT;$j++)
                                $this->SetDot($Margin[0] + $vStartX + $j * $vDX / $vDeltaT, $Margin[2] + $vStartY + $j * $vDY / $vDeltaT);
                        
                        
                        $vStartX = $vStartX + $vDX;
                        
                        $vStartY = $vStartY + $vDY;
                }
        }
}
        
        function Output()
        {
                $out = "";
                
                // �ļ�����
                $out .= "GIF";
                // �汾��Ϣ
                $out .= "89a";
                // �߼���Ļ���
                $out .= chr($this->Width % 256).chr(($this->Width/256) % 256);
                // �߼���Ļ�߶�
                $out .= chr($this->Height % 256).chr(($this->Height / 256) % 256);
                
                $out .= chr(128) . chr(0) . chr(0);
                // ȫ����ɫ�б�
                $out .= chr(0xEE).chr(0xEE).chr(0xEE);
                $out .= chr(0x00).chr(0x00).chr(0x00);
                
                // ͼ���ʶ��
                $out .= ",";
                
                $out .= chr(0).chr(0).chr(0).chr(0);
                // ͼ����
                $out .= chr($this->Width % 256).chr(($this->Width/256) % 256);
                // ͼ��߶�
                $out .= chr($this->Height % 256).chr(($this->Height / 256) % 256);
                $out .= chr(0).chr(7).chr(255);
                                
                for($y = 0;$y<$this->Height;$y++)
                {
                        for($x = 0;$x<$this->Width;$x++)
                        {
                                if($this->Rnd() < $this->Noisy / 100)
                                        $out .= chr(1-$this->Graph[$x][$y]);
                                else
                                {
                                        if($x * ($x-$this->Width) == 0 || $y * ($y-$this->Height) == 0)
                                                $out .= chr($this->Graph[$x][$y]);
                                        else
                                        {
                                                if($this->Graph[$x-1][$y]== 1 || $this->Graph[$x][$y] || $this->Graph[$x][$y-1] == 1)
                                                        $out .= chr(1);
                                                else
                                                        $out .= chr(0);
                                        }
                                }
                                if(($y * $this->Width + $x + 1) % 126 == 0)
                                {
                                        $out .= chr(128);
                                        $i++;
                                }
                                if(($y * $this->Width + $x + $i + 1) % 255 == 0)
                                {
                                        if(($this->Width*$this->Height - $y * $this->Width - $x - 1) > 255)
                                                $out .= chr(255);
                                        else
                                                $out .= chr($this->Width * $this->Height %255);
                                }
                        }
                }
                $out .= chr(128).chr(0).chr(129).chr(0).chr(59);
                header("Expires: -9999");
                header("Pragma: no-cache");
                header("cache-ctrol: no-cache");
                header("ContentType: image/gif");
                echo $out;

        }
}

?>