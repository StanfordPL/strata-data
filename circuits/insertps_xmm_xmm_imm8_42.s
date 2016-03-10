  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vmovlhps %xmm2, %xmm2, %xmm15  #  1     0    4      OPC=vmovlhps_xmm_xmm_xmm  
  punpckldq %xmm15, %xmm1        #  2     0x4  5      OPC=punpckldq_xmm_xmm     
  pmovzxdq %xmm1, %xmm1          #  3     0x9  5      OPC=pmovzxdq_xmm_xmm      
  retq                           #  4     0xe  1      OPC=retq                  
                                                                                
.size target, .-target
