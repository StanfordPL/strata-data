  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_cf_into_rbx  #  1     0    5      OPC=callq_label   
  decw %bx                 #  2     0x5  3      OPC=decw_r16      
  addw %bx, %bx            #  3     0x8  3      OPC=addw_r16_r16  
  setnp %ah                #  4     0xb  3      OPC=setnp_rh      
  retq                     #  5     0xe  1      OPC=retq          
                                                                  
.size target, .-target
