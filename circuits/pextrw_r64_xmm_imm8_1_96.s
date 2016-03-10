  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP  Bytes  Opcode              
.target:                                    #        0    0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label     
  movzwl %ax, %edi                          #  2     0x5  3      OPC=movzwl_r32_r16  
  movl %edi, %ebx                           #  3     0x8  2      OPC=movl_r32_r32    
  retq                                      #  4     0xa  1      OPC=retq            
                                                                                     
.size target, .-target
