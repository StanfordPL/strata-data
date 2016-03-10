  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  negb %dl                                  #  2     0x5   2      OPC=negb_r8         
  callq .move_032_016_edx_r8w_r9w           #  3     0x7   5      OPC=callq_label     
  movzwq %r9w, %rbx                         #  4     0xc   4      OPC=movzwq_r64_r16  
  retq                                      #  5     0x10  1      OPC=retq            
                                                                                      
.size target, .-target
