  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xchgb %bh, %bh    #  1     0    2      OPC=xchgb_rh_rh    
  xchgq %rbx, %rax  #  2     0x2  2      OPC=xchgq_rax_r64  
  retq              #  3     0x4  1      OPC=retq           
                                                            
.size target, .-target
