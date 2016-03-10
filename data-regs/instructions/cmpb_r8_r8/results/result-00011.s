  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %cl, %rax  #  1     0    4      OPC=movsbq_r64_r8  
  xchgb %bl, %ah    #  2     0x4  2      OPC=xchgb_rh_r8    
  subb %cl, %ah     #  3     0x6  2      OPC=subb_rh_r8     
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
