  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vmovshdup %xmm1, %xmm7               #  1     0     4      OPC=vmovshdup_xmm_xmm       
  vpunpckhdq %xmm7, %xmm2, %xmm13      #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpbroadcastq %xmm2, %xmm12           #  3     0x8   5      OPC=vpbroadcastq_xmm_xmm    
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xd   5      OPC=callq_label             
  retq                                 #  5     0x12  1      OPC=retq                    
                                                                                         
.size target, .-target
