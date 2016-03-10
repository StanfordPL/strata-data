  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode             
.target:           #        0     0      OPC=<label>        
  xorq %rax, %rax  #  1     0     3      OPC=xorq_r64_r64   
  cbtw             #  2     0x3   2      OPC=cbtw           
  movzbw %ah, %bp  #  3     0x5   4      OPC=movzbw_r16_rh  
  callq .set_cf    #  4     0x9   5      OPC=callq_label    
  adcb %bpl, %bl   #  5     0xe   3      OPC=adcb_r8_r8     
  retq             #  6     0x11  1      OPC=retq           
                                                            
.size target, .-target
