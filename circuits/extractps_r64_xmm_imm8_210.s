  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vcvtps2dq %xmm1, %xmm0   #  1     0    4      OPC=vcvtps2dq_xmm_xmm   
  punpckhqdq %xmm0, %xmm1  #  2     0x4  4      OPC=punpckhqdq_xmm_xmm  
  movd %xmm1, %ebx         #  3     0x8  4      OPC=movd_r32_xmm        
  retq                     #  4     0xc  1      OPC=retq                
                                                                        
.size target, .-target
