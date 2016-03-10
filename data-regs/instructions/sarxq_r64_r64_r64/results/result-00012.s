  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorb %dl, %dh     #  1     0    2      OPC=xorb_rh_r8     
  xchgq %rdx, %rcx  #  2     0x2  3      OPC=xchgq_r64_r64  
  sarq %cl, %rdx    #  3     0x5  3      OPC=sarq_r64_cl    
  movq %rdx, %rbx   #  4     0x8  3      OPC=movq_r64_r64   
  retq              #  5     0xb  1      OPC=retq           
                                                            
.size target, .-target
