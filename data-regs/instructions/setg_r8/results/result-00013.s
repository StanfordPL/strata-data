  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  setng %al         #  1     0    3      OPC=setng_r8       
  decb %al          #  2     0x3  2      OPC=decb_r8        
  setnz %bl         #  3     0x5  3      OPC=setnz_r8       
  movsbq %bl, %rbx  #  4     0x8  4      OPC=movsbq_r64_r8  
  retq              #  5     0xc  1      OPC=retq           
                                                            
.size target, .-target
