  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r8_r9  #  1     0     5      OPC=callq_label     
  movq $0x80, %rbx                #  2     0x5   10     OPC=movq_r64_imm64  
  incb %bl                        #  3     0xf   2      OPC=incb_r8         
  xchgw %bx, %r8w                 #  4     0x11  4      OPC=xchgw_r16_r16   
  retq                            #  5     0x15  1      OPC=retq            
                                                                            
.size target, .-target
