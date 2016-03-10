  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %bl, %rbx  #  1     0    4      OPC=movsbq_r64_r8  
  xchgb %ah, %bl    #  2     0x4  2      OPC=xchgb_r8_rh    
  retq              #  3     0x6  1      OPC=retq           
                                                            
.size target, .-target
