  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .set_of            #  1     0     5      OPC=callq_label    
  clc                      #  2     0x5   1      OPC=clc            
  callq .read_of_into_rcx  #  3     0x6   5      OPC=callq_label    
  adcb %bl, %cl            #  4     0xb   2      OPC=adcb_r8_r8     
  movsbl %cl, %ebx         #  5     0xd   3      OPC=movsbl_r32_r8  
  retq                     #  6     0x10  1      OPC=retq           
                                                                    
.size target, .-target
