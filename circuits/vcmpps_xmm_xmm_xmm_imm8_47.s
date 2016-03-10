  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vzeroall                           #  1     0     3      OPC=vzeroall                  
  unpckhpd %xmm1, %xmm11             #  2     0x3   5      OPC=unpckhpd_xmm_xmm          
  vfnmsub213ss %xmm11, %xmm4, %xmm6  #  3     0x8   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  vpmovsxdq %xmm6, %ymm5             #  4     0xd   5      OPC=vpmovsxdq_ymm_xmm         
  vpmovsxwd %xmm5, %ymm8             #  5     0x12  5      OPC=vpmovsxwd_ymm_xmm         
  vunpckhpd %xmm8, %xmm8, %xmm1      #  6     0x17  5      OPC=vunpckhpd_xmm_xmm_xmm     
  retq                               #  7     0x1c  1      OPC=retq                      
                                                                                         
.size target, .-target
