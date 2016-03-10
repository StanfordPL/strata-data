  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                     
.target:                               #        0    0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0    5      OPC=callq_label            
  movapd %xmm11, %xmm4                 #  2     0x5  5      OPC=movapd_xmm_xmm         
  vunpcklpd %xmm3, %xmm4, %xmm1        #  3     0xa  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                 #  4     0xe  1      OPC=retq                   
                                                                                       
.size target, .-target
