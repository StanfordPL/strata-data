  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm3  #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  pmovzxdq %xmm3, %xmm1      #  2     0x5  5      OPC=pmovzxdq_xmm_xmm      
  andnps %xmm1, %xmm1        #  3     0xa  3      OPC=andnps_xmm_xmm        
  retq                       #  4     0xd  1      OPC=retq                  
                                                                            
.size target, .-target
