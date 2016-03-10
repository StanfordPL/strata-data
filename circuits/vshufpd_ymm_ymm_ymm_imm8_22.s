  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm3, %ymm2, %ymm15  #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  unpckhpd %xmm15, %xmm3            #  2     0x4   5      OPC=unpckhpd_xmm_xmm         
  vunpcklpd %ymm3, %ymm15, %ymm1    #  3     0x9   4      OPC=vunpcklpd_ymm_ymm_ymm    
  movsd %xmm2, %xmm1                #  4     0xd   4      OPC=movsd_xmm_xmm            
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
