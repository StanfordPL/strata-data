  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  setng %r11b         #  1     0    4      OPC=setng_r8       
  negb %r11b          #  2     0x4  3      OPC=negb_r8        
  setz %r12b          #  3     0x7  4      OPC=setz_r8        
  movzbq %r12b, %rbx  #  4     0xb  4      OPC=movzbq_r64_r8  
  retq                #  5     0xf  1      OPC=retq           
                                                              
.size target, .-target
