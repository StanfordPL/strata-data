  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP   Bytes  Opcode                
.target:               #        0     0      OPC=<label>           
  callq .set_cf        #  1     0     5      OPC=callq_label       
  movl %ebx, %ebx      #  2     0x5   2      OPC=movl_r32_r32      
  callq .set_sf        #  3     0x7   5      OPC=callq_label       
  cmovngel %ecx, %ebx  #  4     0xc   3      OPC=cmovngel_r32_r32  
  cmovael %ecx, %ebx   #  5     0xf   3      OPC=cmovael_r32_r32   
  retq                 #  6     0x12  1      OPC=retq              
                                                                   
.size target, .-target
