  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  vmovups %xmm6, %xmm0                          #  2     0x5   4      OPC=vmovups_xmm_xmm      
  vhaddpd %xmm5, %xmm0, %xmm14                  #  3     0x9   4      OPC=vhaddpd_xmm_xmm_xmm  
  movd %xmm14, %ecx                             #  4     0xd   5      OPC=movd_r32_xmm         
  movl %ecx, %ebx                               #  5     0x12  2      OPC=movl_r32_r32         
  retq                                          #  6     0x14  1      OPC=retq                 
                                                                                               
.size target, .-target
