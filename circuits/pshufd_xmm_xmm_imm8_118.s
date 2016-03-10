  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  vbroadcastsd %xmm2, %ymm9         #  1     0     5      OPC=vbroadcastsd_ymm_xmm  
  vmovshdup %xmm9, %xmm4            #  2     0x5   5      OPC=vmovshdup_xmm_xmm     
  vsqrtsd %xmm2, %xmm4, %xmm13      #  3     0xa   4      OPC=vsqrtsd_xmm_xmm_xmm   
  callq .move_128_064_xmm2_r12_r13  #  4     0xe   5      OPC=callq_label           
  callq .move_064_128_r12_r13_xmm1  #  5     0x13  5      OPC=callq_label           
  punpckhdq %xmm13, %xmm1           #  6     0x18  5      OPC=punpckhdq_xmm_xmm     
  retq                              #  7     0x1d  1      OPC=retq                  
                                                                                    
.size target, .-target
