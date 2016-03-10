  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  movss %xmm8, %xmm1                 #  2     0x5   5      OPC=movss_xmm_xmm          
  vmaxss %xmm9, %xmm9, %xmm7         #  3     0xa   5      OPC=vmaxss_xmm_xmm_xmm     
  vunpckhpd %xmm2, %xmm1, %xmm14     #  4     0xf   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovss %xmm14, %xmm7, %xmm3        #  5     0x13  5      OPC=vmovss_xmm_xmm_xmm     
  unpcklpd %xmm3, %xmm1              #  6     0x18  4      OPC=unpcklpd_xmm_xmm       
  retq                               #  7     0x1c  1      OPC=retq                   
                                                                                      
.size target, .-target
