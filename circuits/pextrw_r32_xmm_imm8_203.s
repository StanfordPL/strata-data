  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  callq .move_032_016_edx_r12w_r13w         #  2     0x5   5      OPC=callq_label     
  movq $0x10, %rbx                          #  3     0xa   10     OPC=movq_r64_imm64  
  xchgw %bx, %r13w                          #  4     0x14  4      OPC=xchgw_r16_r16   
  retq                                      #  5     0x18  1      OPC=retq            
                                                                                      
.size target, .-target
