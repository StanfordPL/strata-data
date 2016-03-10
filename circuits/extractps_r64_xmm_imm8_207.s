  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  movshdup %xmm1, %xmm10              #  1     0     5      OPC=movshdup_xmm_xmm   
  vpmovsxdq %xmm10, %ymm2             #  2     0x5   5      OPC=vpmovsxdq_ymm_xmm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  3     0xa   5      OPC=callq_label        
  movd %xmm9, %ebx                    #  4     0xf   5      OPC=movd_r32_xmm       
  retq                                #  5     0x14  1      OPC=retq               
                                                                                   
.size target, .-target
