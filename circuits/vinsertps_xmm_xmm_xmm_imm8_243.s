  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  vmovsldup %xmm2, %xmm1               #  1     0     4      OPC=vmovsldup_xmm_xmm  
  punpckhdq %xmm3, %xmm1               #  2     0x4   4      OPC=punpckhdq_xmm_xmm  
  callq .move_128_64_xmm3_xmm12_xmm13  #  3     0x8   5      OPC=callq_label        
  movhlps %xmm13, %xmm1                #  4     0xd   4      OPC=movhlps_xmm_xmm    
  retq                                 #  5     0x11  1      OPC=retq               
                                                                                    
.size target, .-target
