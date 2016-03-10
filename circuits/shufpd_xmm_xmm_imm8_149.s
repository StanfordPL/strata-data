  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vpbroadcastq %xmm2, %xmm13     #  1     0    5      OPC=vpbroadcastq_xmm_xmm  
  vsqrtsd %xmm13, %xmm13, %xmm6  #  2     0x5  5      OPC=vsqrtsd_xmm_xmm_xmm   
  punpckhqdq %xmm6, %xmm1        #  3     0xa  4      OPC=punpckhqdq_xmm_xmm    
  retq                           #  4     0xe  1      OPC=retq                  
                                                                                
.size target, .-target
