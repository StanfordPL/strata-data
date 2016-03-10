  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbq %bl, %rcx  #  1     0    4      OPC=movzbq_r64_r8  
  cmc               #  2     0x4  1      OPC=cmc            
  notb %cl          #  3     0x5  2      OPC=notb_r8        
  adcb %ah, %cl     #  4     0x7  2      OPC=adcb_r8_rh     
  cmc               #  5     0x9  1      OPC=cmc            
  xchgb %cl, %ah    #  6     0xa  2      OPC=xchgb_rh_r8    
  retq              #  7     0xc  1      OPC=retq           
                                                            
.size target, .-target
