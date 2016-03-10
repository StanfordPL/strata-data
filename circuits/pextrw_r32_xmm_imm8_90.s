  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP  Bytes  Opcode              
.target:                                    #        0    0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label     
  movzwl %dx, %ebp                          #  2     0x5  3      OPC=movzwl_r32_r16  
  movq %rbp, %rbx                           #  3     0x8  3      OPC=movq_r64_r64    
  retq                                      #  4     0xb  1      OPC=retq            
                                                                                     
.size target, .-target
