  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vxorpd %xmm11, %xmm11, %xmm9    #  1     0     5      OPC=vxorpd_xmm_xmm_xmm     
  vcvtps2dq %ymm9, %ymm5          #  2     0x5   5      OPC=vcvtps2dq_ymm_ymm      
  vunpcklpd %xmm5, %xmm5, %xmm12  #  3     0xa   4      OPC=vunpcklpd_xmm_xmm_xmm  
  movq %xmm12, %xmm1              #  4     0xe   5      OPC=movq_xmm_xmm           
  retq                            #  5     0x13  1      OPC=retq                   
                                                                                   
.size target, .-target
