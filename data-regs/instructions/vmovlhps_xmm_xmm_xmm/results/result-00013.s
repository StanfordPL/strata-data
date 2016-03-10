  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastq %xmm2, %xmm1  #  1     0    5      OPC=vpbroadcastq_xmm_xmm  
  movlhps %xmm3, %xmm1       #  2     0x5  3      OPC=movlhps_xmm_xmm       
  retq                       #  3     0x8  1      OPC=retq                  
                                                                            
.size target, .-target
