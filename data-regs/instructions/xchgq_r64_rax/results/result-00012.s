  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xchgq %rbx, %rax  #  1     0    2      OPC=xchgq_rax_r64  
  xchgb %bh, %bh    #  2     0x2  2      OPC=xchgb_rh_rh    
  retq              #  3     0x4  1      OPC=retq           
                                                            
.size target, .-target
