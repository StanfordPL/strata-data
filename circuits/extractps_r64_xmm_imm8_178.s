  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  xorl %ebx, %ebx                   #  1     0     2      OPC=xorl_r32_r32             
  vunpckhps %xmm1, %xmm1, %xmm3     #  2     0x2   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpcklqdq %xmm3, %xmm3, %xmm15  #  3     0x6   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovd %xmm15, %r12d               #  4     0xa   5      OPC=vmovd_r32_xmm            
  xaddl %r12d, %ebx                 #  5     0xf   4      OPC=xaddl_r32_r32            
  retq                              #  6     0x13  1      OPC=retq                     
                                                                                       
.size target, .-target
