  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpmovsxdq %xmm2, %ymm14         #  1     0     5      OPC=vpmovsxdq_ymm_xmm      
  movupd %xmm1, %xmm9             #  2     0x5   5      OPC=movupd_xmm_xmm         
  vunpckhps %xmm14, %xmm9, %xmm9  #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm  
  unpcklpd %xmm9, %xmm1           #  4     0xf   5      OPC=unpcklpd_xmm_xmm       
  retq                            #  5     0x14  1      OPC=retq                   
                                                                                   
.size target, .-target
