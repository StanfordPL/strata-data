  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode                  
.target:                   #        0     0      OPC=<label>             
  vmovups %xmm1, %xmm2     #  1     0     4      OPC=vmovups_xmm_xmm     
  vcvttpd2dq %ymm2, %xmm7  #  2     0x4   4      OPC=vcvttpd2dq_xmm_ymm  
  cvtdq2pd %xmm7, %xmm8    #  3     0x8   5      OPC=cvtdq2pd_xmm_xmm    
  clc                      #  4     0xd   1      OPC=clc                 
  vcvtsd2sil %xmm8, %ebx   #  5     0xe   5      OPC=vcvtsd2sil_r32_xmm  
  cmovaew %bx, %bx         #  6     0x13  4      OPC=cmovaew_r16_r16     
  retq                     #  7     0x17  1      OPC=retq                
                                                                         
.size target, .-target
