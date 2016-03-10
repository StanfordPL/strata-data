  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  callq .set_of       #  1     0     5      OPC=callq_label      
  setnl %spl          #  2     0x5   4      OPC=setnl_r8         
  negb %spl           #  3     0x9   3      OPC=negb_r8          
  movb %ch, %ch       #  4     0xc   2      OPC=movb_rh_rh       
  cmovnbl %ecx, %ebx  #  5     0xe   3      OPC=cmovnbl_r32_r32  
  retq                #  6     0x11  1      OPC=retq             
                                                                 
.size target, .-target
