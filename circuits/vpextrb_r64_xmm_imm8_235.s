  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movq $0x0, %rbx                     #  1     0     10     OPC=movq_r64_imm64  
  negb %bh                            #  2     0xa   2      OPC=negb_rh         
  callq .move_byte_11_of_ymm1_to_r8b  #  3     0xc   5      OPC=callq_label     
  adcb %r8b, %bl                      #  4     0x11  3      OPC=adcb_r8_r8      
  retq                                #  5     0x14  1      OPC=retq            
                                                                                
.size target, .-target
