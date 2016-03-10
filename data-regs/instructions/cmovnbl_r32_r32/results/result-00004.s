  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  cmovael %ecx, %ebx                #  1     0     3      OPC=cmovael_r32_r32  
  callq .move_064_032_rbx_r8d_r9d   #  2     0x3   5      OPC=callq_label      
  negb %r9b                         #  3     0x8   3      OPC=negb_r8          
  decb %cl                          #  4     0xb   2      OPC=decb_r8          
  cmovbl %ebx, %r8d                 #  5     0xd   4      OPC=cmovbl_r32_r32   
  setno %r8b                        #  6     0x11  4      OPC=setno_r8         
  xchgw %r8w, %r9w                  #  7     0x15  4      OPC=xchgw_r16_r16    
  callq .move_r8b_to_byte_6_of_rbx  #  8     0x19  5      OPC=callq_label      
  retq                              #  9     0x1e  1      OPC=retq             
                                                                               
.size target, .-target
