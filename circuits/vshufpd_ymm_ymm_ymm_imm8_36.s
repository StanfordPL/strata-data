  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  unpcklpd %xmm2, %xmm2             #  1     0     4      OPC=unpcklpd_xmm_xmm         
  vunpcklpd %ymm3, %ymm3, %ymm11    #  2     0x4   4      OPC=vunpcklpd_ymm_ymm_ymm    
  vpunpckhqdq %ymm11, %ymm2, %ymm1  #  3     0x8   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movapd %xmm1, %xmm1               #  4     0xd   4      OPC=movapd_xmm_xmm           
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
