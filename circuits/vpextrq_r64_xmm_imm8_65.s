  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vsubsd %xmm1, %xmm1, %xmm0         #  1     0     4      OPC=vsubsd_xmm_xmm_xmm       
  vpaddq %xmm0, %xmm0, %xmm13        #  2     0x4   4      OPC=vpaddq_xmm_xmm_xmm       
  vpunpckhqdq %ymm13, %ymm0, %ymm13  #  3     0x8   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovq %xmm13, %rbx                 #  4     0xd   5      OPC=vmovq_r64_xmm            
  retq                               #  5     0x12  1      OPC=retq                     
                                                                                        
.size target, .-target
