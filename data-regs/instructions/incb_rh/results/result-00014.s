  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  xorb %al, %al   #  1     0    2      OPC=xorb_r8_r8   
  incw %ax        #  2     0x2  3      OPC=incw_r16     
  xaddb %al, %ah  #  3     0x5  3      OPC=xaddb_rh_r8  
  cwtl            #  4     0x8  1      OPC=cwtl         
  retq            #  5     0x9  1      OPC=retq         
                                                        
.size target, .-target
