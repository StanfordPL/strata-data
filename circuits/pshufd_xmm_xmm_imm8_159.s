  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vunpckhps %xmm2, %xmm2, %xmm3         #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  unpcklps %xmm10, %xmm2                #  3     0x9   4      OPC=unpcklps_xmm_xmm       
  movaps %xmm2, %xmm1                   #  4     0xd   3      OPC=movaps_xmm_xmm         
  movhlps %xmm10, %xmm1                 #  5     0x10  4      OPC=movhlps_xmm_xmm        
  retq                                  #  6     0x14  1      OPC=retq                   
                                                                                         
.size target, .-target
