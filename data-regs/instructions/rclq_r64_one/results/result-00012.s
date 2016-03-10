  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label   
  rolb $0x1, %cl           #  2     0x5  2      OPC=rolb_r8_one   
  negb %cl                 #  3     0x7  2      OPC=negb_r8       
  adcq %rbx, %rbx          #  4     0x9  3      OPC=adcq_r64_r64  
  retq                     #  5     0xc  1      OPC=retq          
                                                                  
.size target, .-target
