  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                
.target:                                #        0     0      OPC=<label>           
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  movsldup %xmm11, %xmm11               #  2     0x5   5      OPC=movsldup_xmm_xmm  
  movsldup %xmm2, %xmm9                 #  3     0xa   5      OPC=movsldup_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm2  #  4     0xf   5      OPC=callq_label       
  vmovdqa %ymm2, %ymm1                  #  5     0x14  4      OPC=vmovdqa_ymm_ymm   
  movups %xmm9, %xmm1                   #  6     0x18  4      OPC=movups_xmm_xmm    
  retq                                  #  7     0x1c  1      OPC=retq              
                                                                                    
.size target, .-target
