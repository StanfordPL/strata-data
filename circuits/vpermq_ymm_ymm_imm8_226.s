  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                
.target:                                #        0     0      OPC=<label>           
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label       
  movlhps %xmm12, %xmm13                #  2     0x5   4      OPC=movlhps_xmm_xmm   
  movdqa %xmm13, %xmm6                  #  3     0x9   5      OPC=movdqa_xmm_xmm    
  vpor %ymm2, %ymm2, %ymm1              #  4     0xe   4      OPC=vpor_ymm_ymm_ymm  
  movdqa %xmm6, %xmm1                   #  5     0x12  4      OPC=movdqa_xmm_xmm    
  retq                                  #  6     0x16  1      OPC=retq              
                                                                                    
.size target, .-target
