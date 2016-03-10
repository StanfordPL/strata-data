  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                     
.target:                               #        0    0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0    5      OPC=callq_label            
  vunpcklps %xmm12, %xmm2, %xmm3       #  2     0x5  5      OPC=vunpcklps_xmm_xmm_xmm  
  vmovsd %xmm13, %xmm3, %xmm1          #  3     0xa  5      OPC=vmovsd_xmm_xmm_xmm     
  retq                                 #  4     0xf  1      OPC=retq                   
                                                                                       
.size target, .-target
