  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm0               #  1     0     4      OPC=vmovd_xmm_r32           
  vmovdqu %xmm0, %xmm8            #  2     0x4   4      OPC=vmovdqu_xmm_xmm         
  vpunpckldq %xmm8, %xmm1, %xmm6  #  3     0x8   5      OPC=vpunpckldq_xmm_xmm_xmm  
  movsd %xmm6, %xmm1              #  4     0xd   4      OPC=movsd_xmm_xmm           
  retq                            #  5     0x11  1      OPC=retq                    
                                                                                    
.size target, .-target
