  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  setae %r9b               #  1     0    4      OPC=setae_r8      
  xorq %r12, %r12          #  2     0x4  3      OPC=xorq_r64_r64  
  callq .read_cf_into_rbx  #  3     0x7  5      OPC=callq_label   
  adcb %r9b, %bl           #  4     0xc  3      OPC=adcb_r8_r8    
  retq                     #  5     0xf  1      OPC=retq          
                                                                  
.size target, .-target
