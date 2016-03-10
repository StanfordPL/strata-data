  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xchgq %rdx, %rcx  #  1     0    3      OPC=xchgq_r64_r64  
  sarq %cl, %rdx    #  2     0x3  3      OPC=sarq_r64_cl    
  movq %rdx, %rbx   #  3     0x6  3      OPC=movq_r64_r64   
  retq              #  4     0x9  1      OPC=retq           
                                                            
.size target, .-target
