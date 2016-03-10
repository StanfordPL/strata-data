  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm2, %xmm11, %xmm0       #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  unpcklps %xmm0, %xmm2                #  3     0x9   3      OPC=unpcklps_xmm_xmm       
  vmovsd %xmm2, %xmm0, %xmm1           #  4     0xc   4      OPC=vmovsd_xmm_xmm_xmm     
  retq                                 #  5     0x10  1      OPC=retq                   
                                                                                        
.size target, .-target
