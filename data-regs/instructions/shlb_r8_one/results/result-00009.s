  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode            
.target:                           #        0     0      OPC=<label>       
  clc                              #  1     0     1      OPC=clc           
  callq .read_cf_into_rcx          #  2     0x1   5      OPC=callq_label   
  callq .move_032_016_ecx_r8w_r9w  #  3     0x6   5      OPC=callq_label   
  xorq %rax, %rax                  #  4     0xb   3      OPC=xorq_r64_r64  
  adcb %r9b, %al                   #  5     0xe   3      OPC=adcb_r8_r8    
  adcb %bl, %bl                    #  6     0x11  2      OPC=adcb_r8_r8    
  retq                             #  7     0x13  1      OPC=retq          
                                                                           
.size target, .-target
