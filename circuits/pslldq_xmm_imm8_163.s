  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vpxor %xmm15, %xmm15, %xmm13  #  1     0    5      OPC=vpxor_xmm_xmm_xmm   
  vcvttps2dq %ymm13, %ymm7      #  2     0x5  5      OPC=vcvttps2dq_ymm_ymm  
  movddup %xmm7, %xmm1          #  3     0xa  4      OPC=movddup_xmm_xmm     
  retq                          #  4     0xe  1      OPC=retq                
                                                                             
.size target, .-target
