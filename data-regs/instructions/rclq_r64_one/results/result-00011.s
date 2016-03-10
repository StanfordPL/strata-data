  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label   
  rolw $0x1, %cx           #  2     0x5  3      OPC=rolw_r16_one  
  negb %cl                 #  3     0x8  2      OPC=negb_r8       
  adcq %rbx, %rbx          #  4     0xa  3      OPC=adcq_r64_r64  
  retq                     #  5     0xd  1      OPC=retq          
                                                                  
.size target, .-target
