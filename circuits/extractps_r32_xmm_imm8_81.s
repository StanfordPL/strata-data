  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                   
.target:                            #        0     0      OPC=<label>              
  pmovzxdq %xmm1, %xmm3             #  1     0     5      OPC=pmovzxdq_xmm_xmm     
  vhaddps %xmm3, %xmm3, %xmm7       #  2     0x5   4      OPC=vhaddps_xmm_xmm_xmm  
  vpaddd %xmm7, %xmm3, %xmm4        #  3     0x9   4      OPC=vpaddd_xmm_xmm_xmm   
  vdivsd %xmm4, %xmm3, %xmm3        #  4     0xd   4      OPC=vdivsd_xmm_xmm_xmm   
  callq .move_128_064_xmm3_r10_r11  #  5     0x11  5      OPC=callq_label          
  movl %r11d, %ebx                  #  6     0x16  3      OPC=movl_r32_r32         
  retq                              #  7     0x19  1      OPC=retq                 
                                                                                   
.size target, .-target
