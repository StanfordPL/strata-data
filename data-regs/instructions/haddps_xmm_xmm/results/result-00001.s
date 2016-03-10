  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vhaddps %xmm1, %xmm2, %xmm6       #  1     0     4      OPC=vhaddps_xmm_xmm_xmm    
  vmaxpd %ymm6, %ymm6, %ymm10       #  2     0x4   4      OPC=vmaxpd_ymm_ymm_ymm     
  vunpckhpd %xmm10, %xmm10, %xmm11  #  3     0x8   5      OPC=vunpckhpd_xmm_xmm_xmm  
  movddup %xmm11, %xmm1             #  4     0xd   5      OPC=movddup_xmm_xmm        
  unpcklpd %xmm6, %xmm1             #  5     0x12  4      OPC=unpcklpd_xmm_xmm       
  retq                              #  6     0x16  1      OPC=retq                   
                                                                                     
.size target, .-target
