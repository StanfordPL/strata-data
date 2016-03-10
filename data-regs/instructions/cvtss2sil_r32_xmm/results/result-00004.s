  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmaxps %xmm1, %xmm1, %xmm1  #  1     0     4      OPC=vmaxps_xmm_xmm_xmm  
  vcvtps2dq %ymm1, %ymm13     #  2     0x4   4      OPC=vcvtps2dq_ymm_ymm   
  movd %xmm13, %r14d          #  3     0x8   5      OPC=movd_r32_xmm        
  movl %r14d, %ebx            #  4     0xd   3      OPC=movl_r32_r32        
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
