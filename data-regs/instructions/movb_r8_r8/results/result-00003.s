  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x0, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rbx_r8d_r9d   #  2     0xa   5      OPC=callq_label     
  callq .move_byte_7_of_rbx_to_r8b  #  3     0xf   5      OPC=callq_label     
  xorw %bx, %r8w                    #  4     0x14  4      OPC=xorw_r16_r16    
  movsbq %cl, %r11                  #  5     0x18  4      OPC=movsbq_r64_r8   
  callq .read_sf_into_rbx           #  6     0x1c  5      OPC=callq_label     
  adcb %r11b, %bl                   #  7     0x21  3      OPC=adcb_r8_r8      
  retq                              #  8     0x24  1      OPC=retq            
                                                                              
.size target, .-target
