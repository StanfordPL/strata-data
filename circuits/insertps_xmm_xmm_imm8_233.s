  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  xorl %ebx, %ebx                                 #  1     0     2      OPC=xorl_r32_r32       
  cvtsi2ssl %ebx, %xmm1                           #  2     0x2   4      OPC=cvtsi2ssl_xmm_r32  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x6   5      OPC=callq_label        
  unpcklpd %xmm11, %xmm1                          #  4     0xb   5      OPC=unpcklpd_xmm_xmm   
  retq                                            #  5     0x10  1      OPC=retq               
                                                                                               
.size target, .-target
