  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  xorq %rsi, %rsi  #  1     0    3      OPC=xorq_r64_r64   
  adcb %ah, %bh    #  2     0x3  2      OPC=adcb_rh_rh     
  seto %bl         #  3     0x5  3      OPC=seto_r8        
  setnbe %al       #  4     0x8  3      OPC=setnbe_r8      
  xchgw %ax, %bx   #  5     0xb  3      OPC=xchgw_r16_r16  
  retq             #  6     0xe  1      OPC=retq           
                                                           
.size target, .-target
