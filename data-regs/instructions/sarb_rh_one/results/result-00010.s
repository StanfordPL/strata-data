  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode             
.target:           #        0     0      OPC=<label>        
  callq .set_pf    #  1     0     5      OPC=callq_label    
  movsbw %ah, %dx  #  2     0x5   4      OPC=movsbw_r16_rh  
  setpe %al        #  3     0x9   3      OPC=setpe_r8       
  sarw $0x1, %ax   #  4     0xc   3      OPC=sarw_r16_one   
  sarw $0x1, %dx   #  5     0xf   3      OPC=sarw_r16_one   
  retq             #  6     0x12  1      OPC=retq           
                                                            
.size target, .-target
