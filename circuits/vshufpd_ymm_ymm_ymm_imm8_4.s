  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpckhpd %ymm3, %ymm2, %ymm11  #  1     0    4      OPC=vunpckhpd_ymm_ymm_ymm  
  movdqu %xmm2, %xmm11            #  2     0x4  5      OPC=movdqu_xmm_xmm         
  vunpcklpd %ymm3, %ymm11, %ymm1  #  3     0x9  4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
