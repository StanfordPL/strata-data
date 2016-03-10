  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vunpcklpd %xmm1, %xmm1, %xmm3     #  1     0     4      OPC=vunpcklpd_xmm_xmm_xmm    
  pmovsxdq %xmm3, %xmm11            #  2     0x4   6      OPC=pmovsxdq_xmm_xmm         
  vpunpckhqdq %xmm1, %xmm11, %xmm0  #  3     0xa   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovd %xmm0, %ebx                 #  4     0xe   4      OPC=vmovd_r32_xmm            
  retq                              #  5     0x12  1      OPC=retq                     
                                                                                       
.size target, .-target
