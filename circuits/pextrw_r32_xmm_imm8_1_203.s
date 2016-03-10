  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  pmovsxwd %xmm1, %xmm6             #  1     0     5      OPC=pmovsxwd_xmm_xmm         
  vpunpckhdq %xmm6, %xmm6, %xmm2    #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vandps %xmm1, %xmm1, %xmm0        #  3     0x9   4      OPC=vandps_xmm_xmm_xmm       
  vpunpckhqdq %ymm0, %ymm2, %ymm14  #  4     0xd   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  xorl %ebx, %ebx                   #  5     0x11  2      OPC=xorl_r32_r32             
  vmovd %xmm14, %eax                #  6     0x13  4      OPC=vmovd_r32_xmm            
  xchgw %ax, %bx                    #  7     0x17  3      OPC=xchgw_r16_r16            
  retq                              #  8     0x1a  1      OPC=retq                     
                                                                                       
.size target, .-target
