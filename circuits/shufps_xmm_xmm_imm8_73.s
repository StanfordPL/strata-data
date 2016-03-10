  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                
.target:                                        #        0    0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label       
  unpcklps %xmm6, %xmm5                         #  2     0x5  3      OPC=unpcklps_xmm_xmm  
  movaps %xmm5, %xmm1                           #  3     0x8  3      OPC=movaps_xmm_xmm    
  movlhps %xmm2, %xmm1                          #  4     0xb  3      OPC=movlhps_xmm_xmm   
  retq                                          #  5     0xe  1      OPC=retq              
                                                                                           
.size target, .-target
