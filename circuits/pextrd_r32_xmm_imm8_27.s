  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  vhaddpd %xmm5, %xmm7, %xmm1                   #  2     0x5   4      OPC=vhaddpd_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d      #  3     0x9   5      OPC=callq_label          
  movl %eax, %ebx                               #  4     0xe   2      OPC=movl_r32_r32         
  retq                                          #  5     0x10  1      OPC=retq                 
                                                                                               
.size target, .-target
