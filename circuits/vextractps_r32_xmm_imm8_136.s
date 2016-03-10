  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                
.target:                                    #        0    0      OPC=<label>           
  vmovddup %xmm1, %xmm3                     #  1     0    4      OPC=vmovddup_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x4  5      OPC=callq_label       
  movl %eax, %ebx                           #  3     0x9  2      OPC=movl_r32_r32      
  retq                                      #  4     0xb  1      OPC=retq              
                                                                                       
.size target, .-target
