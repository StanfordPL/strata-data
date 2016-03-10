  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label   
  decw %cx                 #  2     0x5  3      OPC=decw_r16      
  addw %cx, %cx            #  3     0x8  3      OPC=addw_r16_r16  
  setc %ah                 #  4     0xb  3      OPC=setc_rh       
  retq                     #  5     0xe  1      OPC=retq          
                                                                  
.size target, .-target
