  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm12               #  1     0     4      OPC=vmovd_xmm_r32           
  movupd %xmm1, %xmm3              #  2     0x4   4      OPC=movupd_xmm_xmm          
  vpunpckldq %xmm12, %xmm3, %xmm4  #  3     0x8   5      OPC=vpunpckldq_xmm_xmm_xmm  
  movsd %xmm4, %xmm1               #  4     0xd   4      OPC=movsd_xmm_xmm           
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
