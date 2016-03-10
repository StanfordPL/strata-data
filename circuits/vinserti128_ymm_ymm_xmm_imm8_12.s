  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  vmovdqa %ymm2, %ymm10                #  1     0     4      OPC=vmovdqa_ymm_ymm    
  callq .move_128_64_xmm3_xmm10_xmm11  #  2     0x4   5      OPC=callq_label        
  vmovdqa %xmm3, %xmm14                #  3     0x9   4      OPC=vmovdqa_xmm_xmm    
  vorps %ymm14, %ymm10, %ymm1          #  4     0xd   5      OPC=vorps_ymm_ymm_ymm  
  retq                                 #  5     0x12  1      OPC=retq               
                                                                                    
.size target, .-target
