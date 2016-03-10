  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbq %bl, %rdx  #  1     0    4      OPC=movzbq_r64_r8  
  xaddb %bl, %dh    #  2     0x4  3      OPC=xaddb_rh_r8    
  subb %ah, %dh     #  3     0x7  2      OPC=subb_rh_rh     
  retq              #  4     0x9  1      OPC=retq           
                                                            
.size target, .-target
