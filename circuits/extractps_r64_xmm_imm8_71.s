  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  vsqrtss %xmm1, %xmm1, %xmm7               #  1     0     4      OPC=vsqrtss_xmm_xmm_xmm  
  unpckhps %xmm1, %xmm7                     #  2     0x4   3      OPC=unpckhps_xmm_xmm     
  movhlps %xmm7, %xmm1                      #  3     0x7   3      OPC=movhlps_xmm_xmm      
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0xa   5      OPC=callq_label          
  movl %eax, %ebx                           #  5     0xf   2      OPC=movl_r32_r32         
  retq                                      #  6     0x11  1      OPC=retq                 
                                                                                           
.size target, .-target
