  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmulsd %xmm1, %xmm1, %xmm2       #  1     0     4      OPC=vmulsd_xmm_xmm_xmm      
  vcvttps2dq %xmm2, %xmm10         #  2     0x4   4      OPC=vcvttps2dq_xmm_xmm      
  vpunpckhdq %xmm10, %xmm1, %xmm1  #  3     0x8   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovd %xmm1, %ebx                #  4     0xd   4      OPC=vmovd_r32_xmm           
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
