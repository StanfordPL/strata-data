  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastq %xmm1, %xmm3  #  1     0    5      OPC=vpbroadcastq_xmm_xmm  
  xorps %xmm3, %xmm1         #  2     0x5  3      OPC=xorps_xmm_xmm         
  movlhps %xmm1, %xmm1       #  3     0x8  3      OPC=movlhps_xmm_xmm       
  retq                       #  4     0xb  1      OPC=retq                  
                                                                            
.size target, .-target
