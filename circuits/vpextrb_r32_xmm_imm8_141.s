  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  movzwl %r9w, %edx                         #  2     0x5   4      OPC=movzwl_r32_r16  
  movzbl %dh, %esi                          #  3     0x9   3      OPC=movzbl_r32_rh   
  movzbq %sil, %rbx                         #  4     0xc   4      OPC=movzbq_r64_r8   
  retq                                      #  5     0x10  1      OPC=retq            
                                                                                      
.size target, .-target
