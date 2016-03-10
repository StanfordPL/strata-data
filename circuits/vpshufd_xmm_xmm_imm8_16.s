  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label            
  vmovq %r12, %xmm9                 #  2     0x5   5      OPC=vmovq_xmm_r64          
  vbroadcastss %xmm9, %ymm5         #  3     0xa   5      OPC=vbroadcastss_ymm_xmm   
  vunpcklps %xmm5, %xmm9, %xmm1     #  4     0xf   4      OPC=vunpcklps_xmm_xmm_xmm  
  retq                              #  5     0x13  1      OPC=retq                   
                                                                                     
.size target, .-target
