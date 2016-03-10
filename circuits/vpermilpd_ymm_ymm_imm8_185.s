  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vminpd %ymm2, %ymm2, %ymm1      #  1     0     4      OPC=vminpd_ymm_ymm_ymm     
  maxpd %xmm2, %xmm2              #  2     0x4   4      OPC=maxpd_xmm_xmm          
  vunpcklpd %ymm2, %ymm2, %ymm15  #  3     0x8   4      OPC=vunpcklpd_ymm_ymm_ymm  
  unpckhpd %xmm15, %xmm1          #  4     0xc   5      OPC=unpckhpd_xmm_xmm       
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
