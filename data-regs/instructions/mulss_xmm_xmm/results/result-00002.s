  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vbroadcastss %xmm1, %xmm13                    #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label           
  vmulps %xmm2, %xmm13, %xmm4                   #  3     0xa   4      OPC=vmulps_xmm_xmm_xmm    
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xe   5      OPC=callq_label           
  retq                                          #  5     0x13  1      OPC=retq                  
                                                                                                
.size target, .-target
