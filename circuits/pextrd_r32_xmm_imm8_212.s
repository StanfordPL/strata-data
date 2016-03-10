  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vcvtpd2ps %xmm1, %xmm6  #  1     0     4      OPC=vcvtpd2ps_xmm_xmm  
  vmovd %xmm1, %esp       #  2     0x4   4      OPC=vmovd_r32_xmm      
  movmskpd %xmm6, %ebx    #  3     0x8   4      OPC=movmskpd_r32_xmm   
  andw %bx, %bx           #  4     0xc   3      OPC=andw_r16_r16       
  cmpb %bh, %bh           #  5     0xf   2      OPC=cmpb_rh_rh         
  cmovzl %esp, %ebx       #  6     0x11  3      OPC=cmovzl_r32_r32     
  retq                    #  7     0x14  1      OPC=retq               
                                                                       
.size target, .-target
