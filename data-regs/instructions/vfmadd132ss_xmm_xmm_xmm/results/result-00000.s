  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vpxor %ymm7, %ymm7, %ymm9         #  1     0     4      OPC=vpxor_ymm_ymm_ymm         
  vfnmsub231ps %ymm9, %ymm9, %ymm9  #  2     0x4   5      OPC=vfnmsub231ps_ymm_ymm_ymm  
  vsubps %xmm2, %xmm9, %xmm11       #  3     0x9   4      OPC=vsubps_xmm_xmm_xmm        
  vfmsub132ss %xmm3, %xmm11, %xmm1  #  4     0xd   5      OPC=vfmsub132ss_xmm_xmm_xmm   
  retq                              #  5     0x12  1      OPC=retq                      
                                                                                        
.size target, .-target
