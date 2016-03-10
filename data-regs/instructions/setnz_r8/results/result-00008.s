  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rcx  #  1     0    5      OPC=callq_label   
  salw $0x1, %cx           #  2     0x5  3      OPC=salw_r16_one  
  setz %bl                 #  3     0x8  3      OPC=setz_r8       
  retq                     #  4     0xb  1      OPC=retq          
                                                                  
.size target, .-target
