  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  unpcklps %xmm11, %xmm2               #  2     0x5   4      OPC=unpcklps_xmm_xmm       
  vunpcklps %xmm2, %xmm10, %xmm0       #  3     0x9   4      OPC=vunpcklps_xmm_xmm_xmm  
  movaps %xmm0, %xmm1                  #  4     0xd   3      OPC=movaps_xmm_xmm         
  retq                                 #  5     0x10  1      OPC=retq                   
                                                                                        
.size target, .-target
