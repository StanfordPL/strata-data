  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  cmovnbel %ebx, %ecx  #  1     0    3      OPC=cmovnbel_r32_r32  
  callq .clear_cf      #  2     0x3  5      OPC=callq_label       
  cmovael %ecx, %ebx   #  3     0x8  3      OPC=cmovael_r32_r32   
  retq                 #  4     0xb  1      OPC=retq              
                                                                  
.size target, .-target
