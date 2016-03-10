  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpmovsxdq %xmm1, %ymm12         #  1     0     5      OPC=vpmovsxdq_ymm_xmm      
  vbroadcastss %xmm12, %ymm11     #  2     0x5   5      OPC=vbroadcastss_ymm_xmm   
  sqrtps %xmm11, %xmm0            #  3     0xa   4      OPC=sqrtps_xmm_xmm         
  vunpckhps %xmm0, %xmm12, %xmm0  #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm  
  movd %xmm0, %ebx                #  5     0x12  4      OPC=movd_r32_xmm           
  retq                            #  6     0x16  1      OPC=retq                   
                                                                                   
.size target, .-target
