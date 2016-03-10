  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  vmovq %xmm1, %xmm6                  #  1     0     4      OPC=vmovq_xmm_xmm      
  vpand %ymm1, %ymm6, %ymm9           #  2     0x4   4      OPC=vpand_ymm_ymm_ymm  
  callq .move_256_128_ymm1_xmm8_xmm9  #  3     0x8   5      OPC=callq_label        
  vmovdqa %ymm9, %ymm7                #  4     0xd   5      OPC=vmovdqa_ymm_ymm    
  vmovdqa %ymm9, %ymm1                #  5     0x12  5      OPC=vmovdqa_ymm_ymm    
  vpor %xmm1, %xmm7, %xmm1            #  6     0x17  4      OPC=vpor_xmm_xmm_xmm   
  retq                                #  7     0x1b  1      OPC=retq               
                                                                                   
.size target, .-target
