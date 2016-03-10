  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  orb %bl, %ah             #  1     0     2      OPC=orb_rh_r8        
  callq .read_of_into_rcx  #  2     0x2   5      OPC=callq_label      
  xaddb %ch, %ah           #  3     0x7   3      OPC=xaddb_rh_rh      
  movzbl %ah, %ebp         #  4     0xa   3      OPC=movzbl_r32_rh    
  cmovncw %bp, %bx         #  5     0xd   4      OPC=cmovncw_r16_r16  
  retq                     #  6     0x11  1      OPC=retq             
                                                                      
.size target, .-target
