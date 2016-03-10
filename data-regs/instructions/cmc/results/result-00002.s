  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label   
  xaddb %cl, %cl           #  2     0x5  3      OPC=xaddb_r8_r8   
  decw %cx                 #  3     0x8  3      OPC=decw_r16      
  rolw $0x1, %cx           #  4     0xb  3      OPC=rolw_r16_one  
  retq                     #  5     0xe  1      OPC=retq          
                                                                  
.size target, .-target
