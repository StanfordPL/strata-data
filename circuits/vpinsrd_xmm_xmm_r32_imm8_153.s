  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm1                 #  1     0     4      OPC=vmovd_xmm_r32           
  vmovupd %xmm2, %xmm10             #  2     0x4   4      OPC=vmovupd_xmm_xmm         
  callq .move_128_064_xmm2_r12_r13  #  3     0x8   5      OPC=callq_label             
  vpunpckldq %xmm1, %xmm10, %xmm14  #  4     0xd   4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_064_128_r12_r13_xmm3  #  5     0x11  5      OPC=callq_label             
  vmovsd %xmm14, %xmm3, %xmm1       #  6     0x16  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                              #  7     0x1b  1      OPC=retq                    
                                                                                      
.size target, .-target
