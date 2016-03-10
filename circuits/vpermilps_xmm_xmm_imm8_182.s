  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vbroadcastsd %xmm2, %ymm9    #  1     0     5      OPC=vbroadcastsd_ymm_xmm  
  vsqrtsd %xmm9, %xmm2, %xmm1  #  2     0x5   5      OPC=vsqrtsd_xmm_xmm_xmm   
  vmovsldup %xmm2, %xmm2       #  3     0xa   4      OPC=vmovsldup_xmm_xmm     
  punpckhdq %xmm2, %xmm9       #  4     0xe   5      OPC=punpckhdq_xmm_xmm     
  punpckhdq %xmm9, %xmm1       #  5     0x13  5      OPC=punpckhdq_xmm_xmm     
  retq                         #  6     0x18  1      OPC=retq                  
                                                                               
.size target, .-target
