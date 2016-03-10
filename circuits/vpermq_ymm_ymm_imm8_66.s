  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                
.target:                                #        0     0      OPC=<label>           
  vmovups %xmm2, %xmm11                 #  1     0     4      OPC=vmovups_xmm_xmm   
  callq .move_256_128_ymm2_xmm8_xmm9    #  2     0x4   5      OPC=callq_label       
  vmovddup %ymm11, %ymm10               #  3     0x9   5      OPC=vmovddup_ymm_ymm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xe   5      OPC=callq_label       
  movsd %xmm9, %xmm1                    #  5     0x13  5      OPC=movsd_xmm_xmm     
  retq                                  #  6     0x18  1      OPC=retq              
                                                                                    
.size target, .-target
