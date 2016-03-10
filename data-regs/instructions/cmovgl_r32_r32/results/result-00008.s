  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  movslq %ecx, %r8     #  1     0    3      OPC=movslq_r64_r32    
  cmovnlel %r8d, %ebx  #  2     0x3  4      OPC=cmovnlel_r32_r32  
  salb $0x1, %ch       #  3     0x7  2      OPC=salb_rh_one       
  cmovnbel %ebx, %ebx  #  4     0x9  3      OPC=cmovnbel_r32_r32  
  retq                 #  5     0xc  1      OPC=retq              
                                                                  
.size target, .-target
