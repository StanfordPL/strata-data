  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                 
.target:                        #        0    0      OPC=<label>            
  vpxor %xmm13, %xmm13, %xmm11  #  1     0    5      OPC=vpxor_xmm_xmm_xmm  
  vmovddup %ymm11, %ymm7        #  2     0x5  5      OPC=vmovddup_ymm_ymm   
  movdqu %xmm7, %xmm1           #  3     0xa  4      OPC=movdqu_xmm_xmm     
  retq                          #  4     0xe  1      OPC=retq               
                                                                            
.size target, .-target
