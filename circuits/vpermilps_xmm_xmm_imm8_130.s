  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovq %xmm11, %xmm6                  #  2     0x5   5      OPC=vmovq_xmm_xmm         
  callq .move_64_128_xmm10_xmm11_xmm1  #  3     0xa   5      OPC=callq_label           
  punpckldq %xmm6, %xmm1               #  4     0xf   4      OPC=punpckldq_xmm_xmm     
  unpcklps %xmm2, %xmm11               #  5     0x13  4      OPC=unpcklps_xmm_xmm      
  vmovlhps %xmm1, %xmm11, %xmm1        #  6     0x17  4      OPC=vmovlhps_xmm_xmm_xmm  
  retq                                 #  7     0x1b  1      OPC=retq                  
                                                                                       
.size target, .-target
