  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                     
.target:                                        #        0    0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label            
  vunpcklps %xmm4, %xmm7, %xmm7                 #  2     0x5  4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovlhps %xmm3, %xmm7, %xmm1                  #  3     0x9  4      OPC=vmovlhps_xmm_xmm_xmm   
  retq                                          #  4     0xd  1      OPC=retq                   
                                                                                                
.size target, .-target
