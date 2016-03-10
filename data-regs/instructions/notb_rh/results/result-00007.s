  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  xorq %rcx, %rcx                   #  1     0     3      OPC=xorq_r64_r64  
  callq .read_of_into_rbx           #  2     0x3   5      OPC=callq_label   
  decw %bx                          #  3     0x8   3      OPC=decw_r16      
  xorb %ah, %bl                     #  4     0xb   2      OPC=xorb_r8_rh    
  callq .move_byte_2_of_rbx_to_r9b  #  5     0xd   5      OPC=callq_label   
  callq .move_r9b_to_byte_2_of_rbx  #  6     0x12  5      OPC=callq_label   
  movb %bl, %ah                     #  7     0x17  2      OPC=movb_rh_r8    
  retq                              #  8     0x19  1      OPC=retq          
                                                                            
.size target, .-target
