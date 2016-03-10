  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  movb %cl, %r10b                   #  1     0     3      OPC=movb_r8_r8     
  movsbl %bl, %r11d                 #  2     0x3   4      OPC=movsbl_r32_r8  
  callq .move_008_016_r10b_r11b_bx  #  3     0x7   5      OPC=callq_label    
  movzbq %r11b, %rcx                #  4     0xc   4      OPC=movzbq_r64_r8  
  retq                              #  5     0x10  1      OPC=retq           
                                                                             
.size target, .-target
