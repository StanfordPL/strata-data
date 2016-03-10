  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text           #  Line  RIP  Bytes  Opcode           
.target:         #        0    0      OPC=<label>      
  callq .set_pf  #  1     0    5      OPC=callq_label  
  setnp %dl      #  2     0x5  3      OPC=setnp_r8     
  incb %dl       #  3     0x8  2      OPC=incb_r8      
  adcb %dl, %dl  #  4     0xa  2      OPC=adcb_r8_r8   
  setnp %ah      #  5     0xc  3      OPC=setnp_rh     
  retq           #  6     0xf  1      OPC=retq         
                                                       
.size target, .-target
