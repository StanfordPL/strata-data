  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .clear_sf                   #  1     0     5      OPC=callq_label     
  movzbw %ah, %cx                   #  2     0x5   4      OPC=movzbw_r16_rh   
  movq $0x20, %rbx                  #  3     0x9   10     OPC=movq_r64_imm64  
  callq .move_064_032_rbx_r8d_r9d   #  4     0x13  5      OPC=callq_label     
  callq .read_sf_into_rbx           #  5     0x18  5      OPC=callq_label     
  callq .move_r9b_to_byte_5_of_rbx  #  6     0x1d  5      OPC=callq_label     
  clc                               #  7     0x22  1      OPC=clc             
  adcb %cl, %bl                     #  8     0x23  2      OPC=adcb_r8_r8      
  retq                              #  9     0x25  1      OPC=retq            
                                                                              
.size target, .-target
