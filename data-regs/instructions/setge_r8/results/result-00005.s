  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label    
  setns %r8b               #  2     0x5   4      OPC=setns_r8       
  movsbl %r8b, %r13d       #  3     0x9   4      OPC=movsbl_r32_r8  
  xorb %r13b, %bl          #  4     0xd   3      OPC=xorb_r8_r8     
  retq                     #  5     0x10  1      OPC=retq           
                                                                    
.size target, .-target
