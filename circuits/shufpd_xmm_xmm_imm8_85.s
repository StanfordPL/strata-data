  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm13   #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  rcpps %xmm2, %xmm9           #  2     0x5   4      OPC=rcpps_xmm_xmm         
  vmovss %xmm9, %xmm13, %xmm2  #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm    
  movhlps %xmm13, %xmm1        #  4     0xe   4      OPC=movhlps_xmm_xmm       
  punpckhqdq %xmm2, %xmm1      #  5     0x12  4      OPC=punpckhqdq_xmm_xmm    
  retq                         #  6     0x16  1      OPC=retq                  
                                                                               
.size target, .-target
