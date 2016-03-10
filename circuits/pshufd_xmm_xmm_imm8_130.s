  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm8, %xmm9, %xmm6      #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm  
  movsldup %xmm2, %xmm9              #  3     0xa   5      OPC=movsldup_xmm_xmm       
  movapd %xmm6, %xmm1                #  4     0xf   4      OPC=movapd_xmm_xmm         
  unpcklps %xmm6, %xmm9              #  5     0x13  4      OPC=unpcklps_xmm_xmm       
  unpcklpd %xmm9, %xmm1              #  6     0x17  5      OPC=unpcklpd_xmm_xmm       
  retq                               #  7     0x1c  1      OPC=retq                   
                                                                                      
.size target, .-target
