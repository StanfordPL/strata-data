  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  movq $0x80, %rbx                          #  2     0x5   10     OPC=movq_r64_imm64  
  incb %bl                                  #  3     0xf   2      OPC=incb_r8         
  xchgb %r9b, %bl                           #  4     0x11  3      OPC=xchgb_r8_r8     
  retq                                      #  5     0x14  1      OPC=retq            
                                                                                      
.size target, .-target
