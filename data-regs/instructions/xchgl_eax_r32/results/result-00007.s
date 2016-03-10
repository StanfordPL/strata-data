  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_byte_2_of_rbx_to_r9b  #  1     0     5      OPC=callq_label    
  movsbq %r9b, %r11                 #  2     0x5   4      OPC=movsbq_r64_r8  
  rolw $0x1, %r11w                  #  3     0x9   4      OPC=rolw_r16_one   
  callq .read_of_into_rcx           #  4     0xd   5      OPC=callq_label    
  xchgl %ebx, %eax                  #  5     0x12  2      OPC=xchgl_r32_r32  
  xorb %ch, %al                     #  6     0x14  2      OPC=xorb_r8_rh     
  retq                              #  7     0x16  1      OPC=retq           
                                                                             
.size target, .-target
